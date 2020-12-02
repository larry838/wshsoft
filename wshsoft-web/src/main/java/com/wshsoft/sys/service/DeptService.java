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
     * 新增保存部门信息
     * 
     * @param dept 部门信息
     * @return 结果
     */
    public int insertDept(Dept dept);

    /**
     * 修改保存部门信息
     * 
     * @param dept 部门信息
     * @return 结果
     */
    public int updateDept(Dept dept);

    /**
     * 根据部门ID查询信息
     * 
     * @param deptId 部门ID
     * @return 部门信息
     */
    public Dept selectDeptById(Long deptId);
    
    /**
     * 查询部门树列表
     * 
     * @return 所有部门信息
     */
    public List<Ztree> selectDeptTree();
    
    /**
     * 校验部门名称是否唯一
     * 
     * @param dept 部门信息
     * @return 结果
     */
    public String checkDeptNameUnique(Dept dept);
    
    /**
     * 查询部门人数
     * 
     * @param parentId 父部门ID
     * @return 结果
     */
    public int selectDeptCount(Long parentId);

    /**
     * 查询部门是否存在用户
     * 
     * @param deptId 部门ID
     * @return 结果 true 存在 false 不存在
     */
    public boolean checkDeptExistUser(Long deptId);
}