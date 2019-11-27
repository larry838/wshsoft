package com.wshsoft.web.controller.monitor;

import java.util.List;
import com.wshsoft.framework.shiro.service.SysPasswordService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.wshsoft.common.annotation.SysLog;
import com.wshsoft.common.core.controller.BaseController;
import com.wshsoft.common.core.domain.AjaxResult;
import com.wshsoft.common.core.page.TableDataInfo;
import com.wshsoft.common.enums.BusinessType;
import com.wshsoft.common.utils.poi.ExcelUtil;
import com.wshsoft.system.domain.SysLoginLog;
import com.wshsoft.system.service.SysLoginLogService;

/**
 * 系统访问记录
 * 
 * @author Larry xie
 */
@Controller
@RequestMapping("/monitor/loginLog")
public class SysLoginLogController extends BaseController
{
    private String prefix = "monitor/loginLog";

    @Autowired
    private SysLoginLogService loginLogService;

    @Autowired
    private SysPasswordService passwordService;

    @RequiresPermissions("monitor:loginLog:view")
    @GetMapping()
    public String loginLog()
    {
        return prefix + "/loginLog";
    }

    @RequiresPermissions("monitor:loginLog:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysLoginLog loginLog)
    {
        startPage();
        List<SysLoginLog> list = loginLogService.selectLoginLogList(loginLog);
        return getDataTable(list);
    }

    @SysLog(title = "登陆日志", businessType = BusinessType.EXPORT)
    @RequiresPermissions("monitor:loginLog:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysLoginLog loginLog)
    {
        List<SysLoginLog> list = loginLogService.selectLoginLogList(loginLog);
        ExcelUtil<SysLoginLog> util = new ExcelUtil<SysLoginLog>(SysLoginLog.class);
        return util.exportExcel(list, "登陆日志");
    }

    @RequiresPermissions("monitor:loginLog:remove")
    @SysLog(title = "登陆日志", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(loginLogService.deleteLoginLogByIds(ids));
    }
    
    @RequiresPermissions("monitor:loginLog:remove")
    @SysLog(title = "登陆日志", businessType = BusinessType.CLEAN)
    @PostMapping("/clean")
    @ResponseBody
    public AjaxResult clean()
    {
        loginLogService.cleanLoginLog();
        return success();
    }

    @RequiresPermissions("monitor:loginLog:unlock")
    @SysLog(title = "账户解锁", businessType = BusinessType.OTHER)
    @PostMapping("/unlock")
    @ResponseBody
    public AjaxResult unlock(String loginName)
    {
        passwordService.unlock(loginName);
        return success();
    }
}
