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
import com.wshsoft.sys.domain.OperLog;
import com.wshsoft.sys.service.OperLogService;
import com.wshsoft.common.core.controller.BaseController;
import com.wshsoft.common.core.domain.AjaxResult;
import com.wshsoft.common.utils.poi.ExcelUtil;
import com.wshsoft.common.core.text.Convert;
import com.wshsoft.common.core.page.TableDataInfo;

/**
 * 操作日志记录Controller
 * 
 * @author Carry xie
 * @date 2019-11-25
 */
 
@Controller
@RequestMapping("/sys/operLog")
public class OperLogController extends BaseController {

    private String prefix = "sys/operLog";

    @Autowired
    private OperLogService operLogService;

    @RequiresPermissions("sys:operLog:view")
    @GetMapping()
    public String operLog() {
        return prefix + "/list";
    }

    /**
     * 查询操作日志记录列表
     */
    @RequiresPermissions("sys:operLog:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(OperLog operLog) {
        startPage();
        List<OperLog> list = operLogService.selectOperLogList(operLog);
        return getDataTable(list);
    }

    /**
     * 导出操作日志记录列表
     */
    @RequiresPermissions("sys:operLog:export")
    @SysLog(title = "操作日志记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(OperLog operLog) {
        List<OperLog> list = operLogService.list(new QueryWrapper<>());
        //List<OperLog> list = operLogService.selectOperLogList(operLog);
        ExcelUtil<OperLog> util = new ExcelUtil<OperLog>(OperLog.class);
        return util.exportExcel(list, "operLog");
    }

    /**
     * 新增操作日志记录
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存操作日志记录
     */
    @RequiresPermissions("sys:operLog:add")
    @SysLog(title = "操作日志记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(OperLog operLog) {
        return toAjax(operLogService.save(operLog));
	//return toAjax(operLogService.insertOperLog(operLog));
    }

    /**
     * 修改操作日志记录
     */
    @GetMapping("/edit/{operId}")
    public String edit(@PathVariable("operId") Long operId, ModelMap mmap) {
        OperLog operLog = operLogService.getById(operId);
	//OperLog operLog = operLogService.selectOperLogById(operId);
        mmap.put("operLog", operLog);
        return prefix + "/edit";
    }

    /**
     * 修改保存操作日志记录
     */
    @RequiresPermissions("sys:operLog:edit")
    @SysLog(title = "操作日志记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(OperLog operLog) {
        return toAjax(operLogService.updateById(operLog));
	//return toAjax(operLogService.updateOperLog(operLog));
    }

    /**
     * 删除操作日志记录
     */
    @RequiresPermissions("sys:operLog:remove")
    @SysLog(title = "操作日志记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(operLogService.removeByIds(Arrays.asList(Convert.toStrArray(ids))));
	//return toAjax(operLogService.deleteOperLogByIds(ids));
    }
}
