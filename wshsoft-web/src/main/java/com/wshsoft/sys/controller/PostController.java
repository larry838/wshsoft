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
import com.wshsoft.sys.domain.Post;
import com.wshsoft.sys.service.PostService;
import com.wshsoft.common.core.controller.BaseController;
import com.wshsoft.common.core.domain.AjaxResult;
import com.wshsoft.common.utils.poi.ExcelUtil;
import com.wshsoft.common.core.text.Convert;
import com.wshsoft.common.core.page.TableDataInfo;

/**
 * 岗位信息Controller
 * 
 * @author Carry xie
 * @date 2019-11-25
 */
 
@Controller
@RequestMapping("/sys/post")
public class PostController extends BaseController {

    private String prefix = "sys/post";

    @Autowired
    private PostService postService;

    @RequiresPermissions("sys:post:view")
    @GetMapping()
    public String post() {
        return prefix + "/list";
    }

    /**
     * 查询岗位信息列表
     */
    @RequiresPermissions("sys:post:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Post post) {
        startPage();
        List<Post> list = postService.selectPostList(post);
        return getDataTable(list);
    }

    /**
     * 导出岗位信息列表
     */
    @RequiresPermissions("sys:post:export")
    @SysLog(title = "岗位信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Post post) {
        List<Post> list = postService.list(new QueryWrapper<>());
        //List<Post> list = postService.selectPostList(post);
        ExcelUtil<Post> util = new ExcelUtil<Post>(Post.class);
        return util.exportExcel(list, "post");
    }

    /**
     * 新增岗位信息
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存岗位信息
     */
    @RequiresPermissions("sys:post:add")
    @SysLog(title = "岗位信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Post post) {
        return toAjax(postService.save(post));
	//return toAjax(postService.insertPost(post));
    }

    /**
     * 修改岗位信息
     */
    @GetMapping("/edit/{postId}")
    public String edit(@PathVariable("postId") Long postId, ModelMap mmap) {
        Post post = postService.getById(postId);
	//Post post = postService.selectPostById(postId);
        mmap.put("post", post);
        return prefix + "/edit";
    }

    /**
     * 修改保存岗位信息
     */
    @RequiresPermissions("sys:post:edit")
    @SysLog(title = "岗位信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Post post) {
        return toAjax(postService.updateById(post));
	//return toAjax(postService.updatePost(post));
    }

    /**
     * 删除岗位信息
     */
    @RequiresPermissions("sys:post:remove")
    @SysLog(title = "岗位信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(postService.removeByIds(Arrays.asList(Convert.toStrArray(ids))));
	//return toAjax(postService.deletePostByIds(ids));
    }
}
