package com.wshsoft.framework.async.factory;

import java.util.TimerTask;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.wshsoft.common.constant.Constants;
import com.wshsoft.common.utils.ip.AddressUtils;
import com.wshsoft.common.utils.log.LogUtils;
import com.wshsoft.common.utils.servlet.ServletUtils;
import com.wshsoft.common.utils.ShiroUtils;
import com.wshsoft.common.utils.StringUtils;
import com.wshsoft.common.utils.spring.SpringUtils;
import com.wshsoft.framework.async.manager.log.LoginLogManager;
import com.wshsoft.framework.shiro.session.OnlineSession;
import com.wshsoft.system.domain.SysLoginLog;
import com.wshsoft.system.domain.SysOperLog;
import com.wshsoft.system.domain.SysUserOnline;
import com.wshsoft.system.service.SysOperLogService;
import com.wshsoft.system.service.SysUserOnlineService;
import eu.bitwalker.useragentutils.UserAgent;

/**
 * 异步工厂（产生任务用）
 * 
 * @author Larry xie
 *
 */
public class AsyncFactory {
    private static final Logger logger = LoggerFactory.getLogger("sys-logger");

    /**
     * 同步session到数据库
     * 
     * @param session 在线用户会话
     * @return 任务task
     */
    public static TimerTask syncSessionToDb(final OnlineSession session)
    {
        return new TimerTask()
        {
            @Override
            public void run()
            {
                SysUserOnline online = new SysUserOnline();
                online.setSessionId(String.valueOf(session.getId()));
                online.setDeptName(session.getDeptName());
                online.setLoginName(session.getLoginName());
                online.setStartTimestamp(session.getStartTimestamp());
                online.setLastAccessTime(session.getLastAccessTime());
                online.setExpireTime(session.getTimeout());
                online.setIpaddr(session.getHost());
                online.setLoginLocation(AddressUtils.getRealAddressByIP(session.getHost()));
                online.setBrowser(session.getBrowser());
                online.setOs(session.getOs());
                online.setStatus(session.getStatus());
                SpringUtils.getBean(SysUserOnlineService.class).saveOnline(online);

            }
        };
    }

    /**
     * 操作日志记录
     * 
     * @param operLog 操作日志信息
     * @return 任务task
     */
    public static TimerTask recordOper(final SysOperLog operLog)
    {
        return new TimerTask()
        {
            @Override
            public void run()
            {
                // 远程查询操作地点
                operLog.setOperLocation(AddressUtils.getRealAddressByIP(operLog.getOperIp()));
                SpringUtils.getBean(SysOperLogService.class).insertOperlog(operLog);
            }
        };
    }

    /**
     * 记录登录信息
     * 
     * @param username 用户名
     * @param status 状态
     * @param message 消息
     * @param args 列表
     * @return 任务task
     */
    public static TimerTask recordLoginLog(final String username, final String status, final String message, final Object... args)
    {
        final UserAgent userAgent = UserAgent.parseUserAgentString(ServletUtils.getRequest().getHeader("User-Agent"));
        final String ip = ShiroUtils.getIp();
        return new TimerTask()
        {
            @Override
            public void run()
            {
                String address = AddressUtils.getRealAddressByIP(ip);
                StringBuilder s = new StringBuilder();
                s.append(LogUtils.getBlock(ip));
                s.append(address);
                s.append(LogUtils.getBlock(username));
                s.append(LogUtils.getBlock(status));
                s.append(LogUtils.getBlock(message));
                // 打印信息到日志
                logger.info(s.toString(), args);
                // 获取客户端操作系统
                String os = userAgent.getOperatingSystem().getName();
                // 获取客户端浏览器
                String browser = userAgent.getBrowser().getName();
                // 封装对象
                SysLoginLog loginLog = new SysLoginLog();
                loginLog.setLoginName(username);
                loginLog.setIpAddress(ip);
                loginLog.setLoginLocation(address);
                loginLog.setBrowser(browser);
                loginLog.setOs(os);
                loginLog.setMsg(message);
                // 日志状态
                if (StringUtils.equalsAny(status, Constants.LOGIN_SUCCESS, Constants.LOGOUT, Constants.REGISTER))
                {
	                	loginLog.setStatus(Constants.SUCCESS);
                }
                else if (Constants.LOGIN_FAIL.equals(status))
                {
	                	loginLog.setStatus(Constants.FAIL);
                }
                // 插入数据
	                SpringUtils.getBean(LoginLogManager.class).insertLoginLog(loginLog);
            }
        };
    }
}
