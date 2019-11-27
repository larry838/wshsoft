package com.wshsoft.sys.service;

import com.wshsoft.sys.domain.OperLog;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * 操作日志记录 Service接口
 *
 * @author Carry xie
 * @date 2019-11-25
 */
 
public interface OperLogService extends IService<OperLog> {

    /**
     * 查询操作日志记录列表
     * 
     * @param operLog 操作日志记录
     * @return 操作日志记录集合
     */
    public List<OperLog> selectOperLogList(OperLog operLog);
}