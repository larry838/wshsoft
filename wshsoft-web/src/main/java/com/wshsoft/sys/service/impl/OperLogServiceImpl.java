package com.wshsoft.sys.service.impl;

import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wshsoft.sys.mapper.OperLogMapper;
import com.wshsoft.sys.domain.OperLog;
import com.wshsoft.sys.service.OperLogService;

/**
 * 操作日志记录 Service业务层实现
 *
 * @author Carry xie
 * @date 2019-11-25
 */
 
@Service
public class OperLogServiceImpl extends ServiceImpl<OperLogMapper, OperLog> implements OperLogService {
   
    @Autowired
    private OperLogMapper operLogMapper;

    /**
     * 查询操作日志记录列表
     * 
     * @param operLog 操作日志记录
     * @return 操作日志记录
     */
    @Override
    public List<OperLog> selectOperLogList(OperLog operLog) {
        return operLogMapper.selectOperLogList(operLog);
    }
}