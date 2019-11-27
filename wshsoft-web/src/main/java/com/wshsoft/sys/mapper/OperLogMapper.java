package com.wshsoft.sys.mapper;

import java.util.List;
import com.wshsoft.sys.domain.OperLog;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * 操作日志记录 Mapper接口
 *
 * @author Carry xie
 * @date 2019-11-25
 */
 
public interface OperLogMapper extends BaseMapper<OperLog> {

    /**
     * 查询操作日志记录列表
     * 
     * @param operLog 操作日志记录
     * @return 操作日志记录集合
     */
    public List<OperLog> selectOperLogList(OperLog operLog);
}