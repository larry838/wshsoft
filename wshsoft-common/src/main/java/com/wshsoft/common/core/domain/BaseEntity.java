package com.wshsoft.common.core.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * Entity基类
 * 
 * @author Larry xie
 */
@NoArgsConstructor
@Getter
@Setter
public class BaseEntity implements Serializable
{
	protected static final long serialVersionUID = 1L;

    /** 创建者 */
    @TableField(value = "create_by", fill = FieldFill.INSERT) // 新增执行
    protected String createBy;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @TableField(value = "create_time", fill = FieldFill.INSERT)
    protected Date createTime;

    /** 更新者 */
    @TableField(value = "update_by", fill = FieldFill.UPDATE) //更新执行
    protected String updateBy;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @TableField(value = "update_time", fill = FieldFill.INSERT_UPDATE)
    protected Date updateTime;

   // @TableLogic
   // protected Integer deleted;

    /** 请求参数 */
    @TableField(exist = false)
    private Map<String, Object> params=new HashMap<>();

	/** 搜索值 */
	@TableField(exist = false)
	protected String searchValue;
}
