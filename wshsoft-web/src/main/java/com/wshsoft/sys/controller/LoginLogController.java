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
import com.wshsoft.common.enums.BusinessType;
import com.wshsoft.sys.domain.LoginLog;
import com.wshsoft.sys.service.LoginLogService;
import com.wshsoft.common.core.controller.BaseController;
import com.wshsoft.common.core.domain.AjaxResult;
import com.wshsoft.common.utils.poi.ExcelUtil;
import com.wshsoft.common.core.text.Convert;
import com.wshsoft.common.core.page.TableDataInfo;

/**
 * 系统访问记录Controller
 * 
 * @author Carry xie
 * @date 2019-11-25
 */
 
@Controller
@RequestMapping("/sys/loginLog")
public class LoginLogController extends BaseController {

    private String prefix = "sys/loginLog";

    @Autowired
    private LoginLogService loginLogService;

    @RequiresPermissions("sys:loginLog:view")
    @GetMapping()
    public String loginLog() {
        return prefix + "/list";
    }

    /**
     * 查询系统访问记录列表
     */
    @RequiresPermissions("sys:loginLog:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(LoginLog loginLog) {
        startPage();
        List<LoginLog> list = loginLogService.selectLoginLogList(loginLog);
        return getDataTable(list);
    }

    /**
     * 导出系统访问记录列表
     */
    @RequiresPermissions("sys:loginLog:export")
    @SysLog(title = "系统访问记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(LoginLog loginLog) {
        List<LoginLog> list = loginLogService.list(new QueryWrapper<>());
        //List<LoginLog> list = loginLogService.selectLoginLogList(loginLog);
        ExcelUtil<LoginLog> util = new ExcelUtil<LoginLog>(LoginLog.class);
        return util.exportExcel(list, "loginLog");
    }

    /**
     * 新增系统访问记录
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存系统访问记录
     */
    @RequiresPermissions("sys:loginLog:add")
    @SysLog(title = "系统访问记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(LoginLog loginLog) {
        return toAjax(loginLogService.save(loginLog));
	//return toAjax(loginLogService.insertLoginLog(loginLog));
    }

    /**
     * 修改系统访问记录
     */
    @GetMapping("/edit/{logId}")
    public String edit(@PathVariable("logId") Long logId, ModelMap mmap) {
        LoginLog loginLog = loginLogService.getById(logId);
	//LoginLog loginLog = loginLogService.selectLoginLogById(logId);
        mmap.put("loginLog", loginLog);
        return prefix + "/edit";
    }

    /**
     * 修改保存系统访问记录
     */
    @RequiresPermissions("sys:loginLog:edit")
    @SysLog(title = "系统访问记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(LoginLog loginLog) {
        return toAjax(loginLogService.updateById(loginLog));
	//return toAjax(loginLogService.updateLoginLog(loginLog));
    }

    /**
     * 删除系统访问记录
     */
    @RequiresPermissions("sys:loginLog:remove")
    @SysLog(title = "系统访问记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(loginLogService.removeByIds(Arrays.asList(Convert.toStrArray(ids))));
	//return toAjax(loginLogService.deleteLoginLogByIds(ids));
    }
}
