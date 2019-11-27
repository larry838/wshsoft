package com.wshsoft.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wshsoft.common.core.text.Convert;
import com.wshsoft.system.domain.SysLoginLog;
import com.wshsoft.system.mapper.SysLoginLogMapper;
import com.wshsoft.system.service.SysLoginLogService;

/**
 * 系统访问日志情况信息 服务层处理
 * 
 * @author Larry xie
 */
@Service
public class SysLoginLogServiceImpl implements SysLoginLogService
{

    @Autowired
    private SysLoginLogMapper loginLogMapper;

    /**
     * 新增系统登录日志
     * 
     * @param loginLog 访问日志对象
     */
    @Override
    public void insertLoginLog(SysLoginLog loginLog)
    {
        loginLogMapper.insertLoginLog(loginLog);
    }

    /**
     * 查询系统登录日志集合
     * 
     * @param loginLog 访问日志对象
     * @return 登录记录集合
     */
    @Override
    public List<SysLoginLog> selectLoginLogList(SysLoginLog loginLog)
    {
        return loginLogMapper.selectLoginLogList(loginLog);
    }

    /**
     * 批量删除系统登录日志
     * 
     * @param ids 需要删除的数据
     * @return
     */
    @Override
    public int deleteLoginLogByIds(String ids)
    {
        return loginLogMapper.deleteLoginLogByIds(Convert.toStrArray(ids));
    }

    /**
     * 清空系统登录日志
     */
    @Override
    public void cleanLoginLog()
    {
        loginLogMapper.cleanLoginLog();
    }
}
