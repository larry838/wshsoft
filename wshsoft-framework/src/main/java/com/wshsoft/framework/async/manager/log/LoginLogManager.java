package com.wshsoft.framework.async.manager.log;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wshsoft.system.domain.SysLoginLog;
import com.wshsoft.system.service.SysLoginLogService;


@Service
public class LoginLogManager {
	@Autowired
    private SysLoginLogService loginLogService;
	
    /**
     * 新增系统登录日志
     * 
     * @param loginLog 访问日志对象
     */

    public void insertLoginLog(SysLoginLog loginLog){
		loginLogService.insertLoginLog(loginLog);
    }

}
