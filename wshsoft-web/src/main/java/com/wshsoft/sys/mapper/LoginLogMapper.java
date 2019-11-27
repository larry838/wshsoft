package com.wshsoft.sys.mapper;

import java.util.List;
import com.wshsoft.sys.domain.LoginLog;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * 系统访问记录 Mapper接口
 *
 * @author Carry xie
 * @date 2019-11-25
 */
 
public interface LoginLogMapper extends BaseMapper<LoginLog> {

    /**
     * 查询系统访问记录列表
     * 
     * @param loginLog 系统访问记录
     * @return 系统访问记录集合
     */
    public List<LoginLog> selectLoginLogList(LoginLog loginLog);
}