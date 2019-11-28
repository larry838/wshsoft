package com.wshsoft.sys.service.impl;

import java.util.List;
import java.util.ArrayList;
import com.wshsoft.common.core.domain.Ztree;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wshsoft.sys.mapper.DeptMapper;
import com.wshsoft.sys.domain.Dept;
import com.wshsoft.sys.service.DeptService;

/**
 * 部门 Service业务层实现
 *
 * @author Carry xie
 * @date 2019-11-28
 */
 
@Service
public class DeptServiceImpl extends ServiceImpl<DeptMapper, Dept> implements DeptService {
   
    @Autowired
    private DeptMapper deptMapper;

    /**
     * 查询部门列表
     * 
     * @param dept 部门
     * @return 部门
     */
    @Override
    public List<Dept> selectDeptList(Dept dept) {
        return deptMapper.selectDeptList(dept);
    }

    /**
     * 查询部门树列表
     * 
     * @return 所有部门信息
     */
    @Override
    public List<Ztree> selectDeptTree() {
        List<Dept> deptList = deptMapper.selectDeptList(new Dept());
        List<Ztree> ztrees = new ArrayList<Ztree>();
        for (Dept dept : deptList)
        {
            Ztree ztree = new Ztree();
            ztree.setId(dept.getDeptId());
            ztree.setpId(dept.getParentId());
            ztree.setName(dept.getDeptName());
            ztree.setTitle(dept.getDeptName());
            ztrees.add(ztree);
        }
        return ztrees;
    }
}