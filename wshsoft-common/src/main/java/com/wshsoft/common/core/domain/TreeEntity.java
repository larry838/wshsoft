package com.wshsoft.common.core.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.wshsoft.common.annotation.Excel;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * Tree基类
 * 
 * @author Larry xie
 */
@NoArgsConstructor
@Getter
@Setter
public class TreeEntity extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 父节点名称 */
    @TableField(exist = false)
    protected  String parentName;

    /** 父id */
    @TableField("parent_id")
    @Excel(name = "父id")
    protected  Long parentId;

    /** 显示顺序 */
    @TableField("order_num")
    @Excel(name = "显示顺序")
    protected  Integer orderNum;

    /** 祖级列表 */
    @Excel(name = "祖级列表")
    protected  String ancestors;

}