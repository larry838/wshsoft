package com.wshsoft.sys.mapper;

import java.util.List;
import com.wshsoft.sys.domain.Dept;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * 部门 Mapper接口
 *
 * @author Carry xie
 * @date 2019-11-28
 */
 
public interface DeptMapper extends BaseMapper<Dept> {

    /**
     * 查询部门列表
     * 
     * @param dept 部门
     * @return 部门集合
     */
    public List<Dept> selectDeptList(Dept dept);
}