package com.wshsoft.sys.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
    
    /**
     * 修改子元素关系
     * 
     * @param depts 子元素
     * @return 结果
     */
    public int updateDeptChildren(@Param("depts") List<Dept> depts);

    /**
     * 根据部门ID查询信息
     * 
     * @param deptId 部门ID
     * @return 部门信息
     */
    public Dept selectDeptById(Long deptId);
    
    /**
     * 修改所在部门的父级部门状态
     * 
     * @param dept 部门
     */
    public void updateDeptStatus(Dept dept);

    /**
     * 根据ID查询所有子部门
     * @param deptId 部门ID
     * @return 部门列表
     */
    public List<Dept> selectChildrenDeptById(Long deptId);
    
    /**
     * 校验部门名称是否唯一
     * 
     * @param deptName 部门名称
     * @param parentId 父部门ID
     * @return 结果
     */
    public Dept checkDeptNameUnique(@Param("deptName") String deptName, @Param("parentId") Long parentId);
    
    /**
     * 查询部门人数
     * 
     * @param parentId 父部门ID
     * @return 结果
     */
    public int selectDeptCount(Dept dept);

    /**
     * 查询部门是否存在用户
     * 
     * @param deptId 部门ID
     * @return 结果 true 存在 false 不存在
     */
    public int checkDeptExistUser(Long deptId);


}