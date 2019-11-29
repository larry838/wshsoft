package com.wshsoft.sys.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wshsoft.common.annotation.Excel;
import java.io.Serializable;
import com.wshsoft.common.core.domain.TreeEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * 公司表 sys_company
 *
 * @author Carry xie
 * @date 2019-11-29
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_company")
public class Company  extends TreeEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    /** 公司id */
     @TableId(value="company_id", type= IdType.AUTO)
      private Long companyId;

    /** 公司名称 */
    @TableField("company_name")
    @Excel(name = "公司名称")
    private String companyName;

    /** 负责人 */
    @Excel(name = "负责人")
    private String leader;

    /** 联系电话 */
      private String phone;

    /** 邮箱 */
      private String email;

    /** 公司状态（0正常 1停用） */
    @Excel(name = "公司状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 删除标志（0代表存在 2代表删除） */
    @TableField("del_flag")
      private String delFlag;


    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("companyId", getCompanyId())
            .append("parentId", getParentId())
            .append("ancestors", getAncestors())
            .append("companyName", getCompanyName())
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
            .append("remark", getRemark())
            .toString();
    }
}