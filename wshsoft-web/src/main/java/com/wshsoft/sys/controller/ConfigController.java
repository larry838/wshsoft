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
import com.wshsoft.sys.domain.Config;
import com.wshsoft.sys.service.ConfigService;
import com.wshsoft.common.core.controller.BaseController;
import com.wshsoft.common.core.domain.AjaxResult;
import com.wshsoft.common.utils.poi.ExcelUtil;
import com.wshsoft.common.core.page.TableDataInfo;
import com.wshsoft.common.core.text.Convert;

/**
 * 参数配置Controller
 * 
 * @author Carry xie
 * @date 2019-11-28
 */
 
@Controller
@RequestMapping("/sys/config")
public class ConfigController extends BaseController {

    private String prefix = "sys/config";

    @Autowired
    private ConfigService configService;

    @RequiresPermissions("sys:config:view")
    @GetMapping()
    public String config() {
        return prefix + "/list";
    }

    /**
     * 查询参数配置列表
     */
    @RequiresPermissions("sys:config:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Config config) {
        startPage();
        List<Config> list = configService.selectConfigList(config);
        return getDataTable(list);
    }

    /**
     * 导出参数配置列表
     */
    @RequiresPermissions("sys:config:export")
    @SysLog(title = "参数配置", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Config config) {
        List<Config> list = configService.list(new QueryWrapper<>());
        //List<Config> list = configService.selectConfigList(config);
        ExcelUtil<Config> util = new ExcelUtil<Config>(Config.class);
        return util.exportExcel(list, "config");
    }

    /**
     * 新增参数配置
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存参数配置
     */
    @RequiresPermissions("sys:config:add")
    @SysLog(title = "参数配置", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Config config) {
        if (UserConstants.CONFIG_KEY_NOT_UNIQUE.equals(configService.checkConfigKeyUnique(config)))
        {
            return error("新增参数'" + config.getConfigName() + "'失败，参数键名已存在");
        }
        return toAjax(configService.save(config));
	//return toAjax(configService.insertConfig(config));
    }

    /**
     * 修改参数配置
     */
    @GetMapping("/edit/{configId}")
    public String edit(@PathVariable("configId") Integer configId, ModelMap mmap) {
        Config config = configService.getById(configId);
	//Config config = configService.selectConfigById(configId);
        mmap.put("config", config);
        return prefix + "/edit";
    }

    /**
     * 修改保存参数配置
     */
    @RequiresPermissions("sys:config:edit")
    @SysLog(title = "参数配置", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Config config) {
        if (UserConstants.CONFIG_KEY_NOT_UNIQUE.equals(configService.checkConfigKeyUnique(config)))
        {
            return error("修改参数'" + config.getConfigName() + "'失败，参数键名已存在");
        }
        return toAjax(configService.updateById(config));
	//return toAjax(configService.updateConfig(config));
    }

    /**
     * 删除参数配置
     */
    @RequiresPermissions("sys:config:remove")
    @SysLog(title = "参数配置", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(configService.removeByIds(Arrays.asList(Convert.toStrArray(ids))));
	//return toAjax(configService.deleteConfigByIds(ids));
    }
    
    /**
     * 校验参数键名
     */
    @PostMapping("/checkConfigKeyUnique")
    @ResponseBody
    public String checkConfigKeyUnique(Config config)
    {
        return configService.checkConfigKeyUnique(config);
    }
}
