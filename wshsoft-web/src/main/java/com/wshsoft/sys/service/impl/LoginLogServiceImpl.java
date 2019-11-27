package com.wshsoft.sys.service.impl;

import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wshsoft.sys.mapper.LoginLogMapper;
import com.wshsoft.sys.domain.LoginLog;
import com.wshsoft.sys.service.LoginLogService;

/**
 * 系统访问记录 Service业务层实现
 *
 * @author Carry xie
 * @date 2019-11-25
 */
 
@Service
public class LoginLogServiceImpl extends ServiceImpl<LoginLogMapper, LoginLog> implements LoginLogService {
   
    @Autowired
    private LoginLogMapper loginLogMapper;

    /**
     * 查询系统访问记录列表
     * 
     * @param loginLog 系统访问记录
     * @return 系统访问记录
     */
    @Override
    public List<LoginLog> selectLoginLogList(LoginLog loginLog) {
        return loginLogMapper.selectLoginLogList(loginLog);
    }
}