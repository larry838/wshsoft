package com.wshsoft.sys.controller;

import java.util.Arrays;
import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.wshsoft.common.annotation.SysLog;
import com.wshsoft.common.constant.UserConstants;
import com.wshsoft.common.enums.BusinessType;
import com.wshsoft.sys.domain.Dept;
import com.wshsoft.sys.service.DeptService;
import com.wshsoft.system.domain.SysDept;
import com.wshsoft.common.core.controller.BaseController;
import com.wshsoft.common.core.domain.AjaxResult;
import com.wshsoft.common.utils.poi.ExcelUtil;
import com.wshsoft.common.core.text.Convert;
import com.wshsoft.common.utils.StringUtils;
import com.wshsoft.common.core.domain.Ztree;

/**
 * 部门Controller
 * 
 * @author Carry xie
 * @date 2019-11-28
 */
 
@Controller
@RequestMapping("/sys/dept")
public class DeptController extends BaseController {

    private String prefix = "sys/dept";

    @Autowired
    private DeptService deptService;

    @RequiresPermissions("sys:dept:view")
    @GetMapping()
    public String dept() {
        return prefix + "/list";
    }

    /**
     * 查询部门树列表
     */
    @RequiresPermissions("sys:dept:list")
    @PostMapping("/list")
    @ResponseBody
    public List<Dept> list(Dept dept) {
        List<Dept> list = deptService.selectDeptList(dept);
        return list;
    }

    /**
     * 导出部门列表
     */
    @RequiresPermissions("sys:dept:export")
    @SysLog(title = "部门", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Dept dept) {
        List<Dept> list = deptService.list(new QueryWrapper<>());
        //List<Dept> list = deptService.selectDeptList(dept);
        ExcelUtil<Dept> util = new ExcelUtil<Dept>(Dept.class);
        return util.exportExcel(list, "dept");
    }

    /**
     * 新增部门
     */
    @GetMapping(value = { "/add/{deptId}", "/add/" })
    public String add(@PathVariable(value = "deptId", required = false) Long deptId, ModelMap mmap) {
        if (StringUtils.isNotNull(deptId)) {
            mmap.put("dept", deptService.getById(deptId));
        }
        return prefix + "/add";
    }

    /**
     * 新增保存部门
     */
    @RequiresPermissions("sys:dept:add")
    @SysLog(title = "部门管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@Validated Dept dept) {
        if (UserConstants.DEPT_NAME_NOT_UNIQUE.equals(deptService.checkDeptNameUnique(dept))){
            return error("新增部门'" + dept.getDeptName() + "'失败，部门名称已存在");
        }
       //return toAjax(deptService.save(dept));
	   return toAjax(deptService.insertDept(dept));
    }

    /**
     * 修改部门
     */
    @GetMapping("/edit/{deptId}")
    public String edit(@PathVariable("deptId") Long deptId, ModelMap mmap) {
       // Dept dept = deptService.getById(deptId);
    	Dept dept = deptService.selectDeptById(deptId);
        if (StringUtils.isNotNull(dept) && 100L == deptId)
        {
            dept.setParentName("无");
        }
        mmap.put("dept", dept);
        return prefix + "/edit";
    }

    /**
     * 修改保存部门
     */
    @RequiresPermissions("sys:dept:edit")
    @SysLog(title = "部门管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Dept dept) {
        if (UserConstants.DEPT_NAME_NOT_UNIQUE.equals(deptService.checkDeptNameUnique(dept)))
        {
            return error("修改部门'" + dept.getDeptName() + "'失败，部门名称已存在");
        }
        else if (dept.getParentId().equals(dept.getDeptId()))
        {
            return error("修改部门'" + dept.getDeptName() + "'失败，上级部门不能是自己");
        }
       // return toAjax(deptService.updateById(dept));
	    return toAjax(deptService.updateDept(dept));
    }

    /**
     * 删除
     */
    @RequiresPermissions("sys:dept:remove")
    @SysLog(title = "部门管理", businessType = BusinessType.DELETE)
    @GetMapping("/remove/{deptId}")
    @ResponseBody
    public AjaxResult remove(@PathVariable("deptId") Long deptId) {
        if (deptService.selectDeptCount(deptId) > 0)
        {
            return AjaxResult.warn("存在下级部门,不允许删除");
        }
        if (deptService.checkDeptExistUser(deptId))
        {
            return AjaxResult.warn("部门存在用户,不允许删除");
        }
        return toAjax(deptService.removeById(deptId));
    }

    /**
     * 选择部门树
     */
    @GetMapping(value = { "/selectDeptTree/{deptId}", "/selectDeptTree/" })
    public String selectDeptTree(@PathVariable(value = "deptId", required = false) Long deptId, ModelMap mmap) {
        if (StringUtils.isNotNull(deptId)) {
            mmap.put("dept", deptService.getById(deptId));
        }
        return prefix + "/tree";
    }

    /**
     * 加载部门树列表
     */
    @GetMapping("/treeData")
    @ResponseBody
    public List<Ztree> treeData() {
        List<Ztree> ztrees = deptService.selectDeptTree();
        return ztrees;
    }
    /**
     * 校验部门名称
     */
    @PostMapping("/checkDeptNameUnique")
    @ResponseBody
    public String checkDeptNameUnique(Dept dept)
    {
        return deptService.checkDeptNameUnique(dept);
    }
    
}
