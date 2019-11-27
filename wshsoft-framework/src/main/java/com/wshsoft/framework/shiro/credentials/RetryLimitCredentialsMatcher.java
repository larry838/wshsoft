package com.wshsoft.framework.shiro.credentials;

import java.util.concurrent.TimeUnit;

import org.apache.shiro.authc.AccountException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;

import com.wshsoft.common.constant.Constants;
import com.wshsoft.framework.async.factory.AsyncFactory;
import com.wshsoft.framework.async.manager.AsyncManager;
import com.wshsoft.system.domain.SysUser;
import com.wshsoft.system.service.SysUserService;

import lombok.extern.slf4j.Slf4j;

/**
 * Shiro-密码输入错误的状态下重试次数的匹配管理
 *
 * @author Carry xie
 * @version 1.0
 * 
 * @date 2018/4/24 14:37
 * @since 1.0
 */
@Slf4j
public class RetryLimitCredentialsMatcher extends CredentialsMatcher {

    /**
     * 用户登录次数计数  redisKey 前缀
     */
    private static final String SHIRO_LOGIN_COUNT = "user_login_count_";
    /**
     * 用户登录是否被锁定    一小时 redisKey 前缀
     */
    private static final String SHIRO_IS_LOCK = "user_is_lock_";
    
    @Value(value = "${user.password.maxRetryCount}")
    private int maxRetryCount=5;
    
    @Value(value = "${user.password.maxLockTime}")
    private int maxLockTime=30;
    
    @Autowired
    private RedisTemplate redisTemplate;
    
    @Autowired
    private SysUserService userService;

    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
    	 SysUser user = (SysUser) info.getPrincipals().getPrimaryPrincipal();
        String username = user.getLoginName();
        // 访问一次，计数一次
        ValueOperations<String, String> opsForValue = redisTemplate.opsForValue();
        String loginCountKey = SHIRO_LOGIN_COUNT + username;
        String isLockKey = SHIRO_IS_LOCK + username;
        opsForValue.increment(loginCountKey, 1);

        if (redisTemplate.hasKey(isLockKey)) {
        	AsyncManager.me().execute(AsyncFactory.recordLoginLog(user.getLoginName(), Constants.LOGIN_FAIL,"帐号[" + username + "]已被禁止登录"));
            throw new ExcessiveAttemptsException("由于密码输入错误次数过多，帐号[" + username + "]已被禁止登录 "+maxLockTime+"分钟后自动解除");
        }

        // 计数大于5时，设置用户被锁定时间
        String loginCount = String.valueOf(opsForValue.get(loginCountKey));
        int retryCount = (maxRetryCount - Integer.parseInt(loginCount));
        if (retryCount <= 0) {
            opsForValue.set(isLockKey, "LOCK");
            redisTemplate.expire(isLockKey, maxLockTime, TimeUnit.MINUTES);
            redisTemplate.expire(loginCountKey, maxLockTime, TimeUnit.MINUTES);
            AsyncManager.me().execute(AsyncFactory.recordLoginLog(user.getLoginName(), Constants.LOGIN_FAIL,"密码输入错误"));
            throw new ExcessiveAttemptsException("由于密码输入错误次数过多，帐号[" + username + "]已被禁止登录！");
        }

        boolean matches = super.doCredentialsMatch(token, info);
        if (!matches) {
            String msg = retryCount <= 0 ? "您的账号"+maxLockTime+"分钟内禁止登录！" : "您还剩" + retryCount + "次重试的机会";
            AsyncManager.me().execute(AsyncFactory.recordLoginLog(user.getLoginName(), Constants.LOGIN_FAIL,"帐号或密码不正确！" + msg));
            throw new AccountException("帐号或密码不正确！" + msg);
        }

        //清空登录计数
        redisTemplate.delete(loginCountKey);
        // 当验证都通过后，把用户信息放在session里
        //SecurityUtils.getSubject().getSession().setAttribute(SessionConst.USER_SESSION_KEY, user);
        return true;
    }
}
