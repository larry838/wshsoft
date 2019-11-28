package com.wshsoft.sys.service;

import com.wshsoft.sys.domain.Dept;
import java.util.List;
import com.wshsoft.common.core.domain.Ztree;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * 部门 Service接口
 *
 * @author Carry xie
 * @date 2019-11-28
 */
 
public interface DeptService extends IService<Dept> {

    /**
     * 查询部门列表
     * 
     * @param dept 部门
     * @return 部门集合
     */
    public List<Dept> selectDeptList(Dept dept);

    /**
     * 查询部门树列表
     * 
     * @return 所有部门信息
     */
    public List<Ztree> selectDeptTree();
}