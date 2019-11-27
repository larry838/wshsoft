package com.wshsoft.sys.service;

import com.wshsoft.sys.domain.LoginLog;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * 系统访问记录 Service接口
 *
 * @author Carry xie
 * @date 2019-11-25
 */
 
public interface LoginLogService extends IService<LoginLog> {

    /**
     * 查询系统访问记录列表
     * 
     * @param loginLog 系统访问记录
     * @return 系统访问记录集合
     */
    public List<LoginLog> selectLoginLogList(LoginLog loginLog);
}