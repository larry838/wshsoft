package com.wshsoft.sys.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wshsoft.common.annotation.Excel;
import java.io.Serializable;

import com.wshsoft.common.core.domain.BaseEntity;
import com.wshsoft.common.core.domain.TreeEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * 部门表 sys_dept
 *
 * @author Carry xie
 * @date 2019-11-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_dept")
public class Dept  extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    /** 部门id */
     @TableId(value="dept_id", type= IdType.AUTO)
      private Long deptId;

    /** 父部门id */
    @TableField("parent_id")
    @Excel(name = "父部门id")
    private Long parentId;

    /** 祖级列表 */
    @Excel(name = "祖级列表")
    private String ancestors;

    /** 部门名称 */
    @TableField("dept_name")
    @Excel(name = "部门名称")
    private String deptName;

    /** 显示顺序 */
    @TableField("order_num")
    @Excel(name = "显示顺序")
    private Integer orderNum;

    /** 负责人 */
    @Excel(name = "负责人")
    private String leader;

    /** 联系电话 */
    @Excel(name = "联系电话")
    private String phone;

    /** 邮箱 */
    @Excel(name = "邮箱")
    private String email;

    /** 部门状态（0正常 1停用） */
    @Excel(name = "部门状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 删除标志（0代表存在 2代表删除） */
    @TableField("del_flag")
      private String delFlag;


    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("deptId", getDeptId())
            .append("parentId", getParentId())
            .append("ancestors", getAncestors())
            .append("deptName", getDeptName())
            .append("orderNum", getOrderNum())
            .append("leader", getLeader())
            .append("phone", getPhone())
            .append("email", getEmail())
            .append("status", getStatus())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}