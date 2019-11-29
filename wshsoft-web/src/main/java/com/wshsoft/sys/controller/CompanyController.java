package com.wshsoft.sys.controller;

import java.util.Arrays;
import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.wshsoft.common.annotation.SysLog;
import com.wshsoft.common.constant.SysConstants;
import com.wshsoft.common.enums.BusinessType;
import com.wshsoft.sys.domain.Company;
import com.wshsoft.sys.service.CompanyService;
import com.wshsoft.common.core.controller.BaseController;
import com.wshsoft.common.core.domain.AjaxResult;
import com.wshsoft.common.utils.poi.ExcelUtil;
import com.wshsoft.common.core.text.Convert;
import com.wshsoft.common.utils.StringUtils;
import com.wshsoft.common.core.domain.Ztree;

/**
 * 公司Controller
 * 
 * @author Carry xie
 * @date 2019-11-29
 */
 
@Controller
@RequestMapping("/sys/company")
public class CompanyController extends BaseController {

    private String prefix = "sys/company";

    @Autowired
    private CompanyService companyService;

    @RequiresPermissions("sys:company:view")
    @GetMapping()
    public String company() {
        return prefix + "/list";
    }

    /**
     * 查询公司树列表
     */
    @RequiresPermissions("sys:company:list")
    @PostMapping("/list")
    @ResponseBody
    public List<Company> list(Company company) {
        List<Company> list = companyService.selectCompanyList(company);
        return list;
    }

    /**
     * 导出公司列表
     */
    @RequiresPermissions("sys:company:export")
    @SysLog(title = "公司", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Company company) {
        List<Company> list = companyService.list(new QueryWrapper<>());
        //List<Company> list = companyService.selectCompanyList(company);
        ExcelUtil<Company> util = new ExcelUtil<Company>(Company.class);
        return util.exportExcel(list, "company");
    }

    /**
     * 新增公司
     */
    @GetMapping(value = { "/add/{companyId}", "/add/" })
    public String add(@PathVariable(value = "companyId", required = false) Long companyId, ModelMap mmap) {
        if (StringUtils.isNotNull(companyId)) {
            mmap.put("company", companyService.getById(companyId));
        }
        return prefix + "/add";
    }

    /**
     * 新增保存公司
     */
    @RequiresPermissions("sys:company:add")
    @SysLog(title = "公司管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Company company) {
        if (SysConstants.BUSS_NAME_NOT_UNIQUE.equals(companyService.checkCompanyNameUnique(company))){
            return error("新增部门'" + company.getCompanyName() + "'失败，公司名称已存在");
        }
       // return toAjax(companyService.save(company));
	  return toAjax(companyService.insertCompany(company));
    }

    /**
     * 修改公司
     */
    @GetMapping("/edit/{companyId}")
    public String edit(@PathVariable("companyId") Long companyId, ModelMap mmap) {
    	    Company company = companyService.selectCompanyById(companyId);
	    if (StringUtils.isNotNull(company))
        {
            company.setParentName("无");
        }
            mmap.put("company", company);
        return prefix + "/edit";
    }

    /**
     * 修改保存公司
     */
    @RequiresPermissions("sys:company:edit")
    @SysLog(title = "公司管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Company company) {
       if (SysConstants.BUSS_NAME_NOT_UNIQUE.equals(companyService.checkCompanyNameUnique(company)))
        {
            return error("修改公司'" + company.getCompanyName() + "'失败，公司名称已存在");
        }
        else if (company.getParentId().equals(company.getCompanyId()))
        {
            return error("修改公司'" + company.getCompanyName() + "'失败，上级公司不能是自己");
        }
        return toAjax(companyService.updateCompany(company));
         }

    /**
     * 删除
     */
    @RequiresPermissions("sys:company:remove")
    @SysLog(title = "公司管理", businessType = BusinessType.DELETE)
    @GetMapping("/remove/{companyId}")
    @ResponseBody
    public AjaxResult remove(@PathVariable("companyId") Long companyId) {
        return toAjax(companyService.removeById(companyId));
    }
    /**
     * 校验公司名称
     */
    @PostMapping("/checkCompanyNameUnique")
    @ResponseBody
    public String checkCompanyNameUnique(Company company)
    {
        return companyService.checkCompanyNameUnique(company);
    }

    /**
     * 选择公司树
     */
    @GetMapping(value = { "/selectCompanyTree/{companyId}", "/selectCompanyTree/" })
    public String selectCompanyTree(@PathVariable(value = "companyId", required = false) Long companyId, ModelMap mmap) {
        if (StringUtils.isNotNull(companyId)) {
            mmap.put("company", companyService.getById(companyId));
        }
        return prefix + "/tree";
    }

    /**
     * 加载公司树列表
     */
    @GetMapping("/treeData")
    @ResponseBody
    public List<Ztree> treeData() {
        List<Ztree> ztrees = companyService.selectCompanyTree();
        return ztrees;
    }
}
