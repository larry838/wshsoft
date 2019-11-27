package com.wshsoft.sys.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wshsoft.common.annotation.Excel;
import java.io.Serializable;
import com.wshsoft.common.core.domain.BaseEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * 岗位信息表 sys_post
 *
 * @author Carry xie
 * @date 2019-11-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_post")
public class Post  extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    /** 岗位ID */
     @TableId(value="post_id", type= IdType.AUTO)
      private Long postId;

    /** 岗位编码 */
    @TableField("post_code")
    @Excel(name = "岗位编码")
    private String postCode;

    /** 岗位名称 */
    @TableField("post_name")
    @Excel(name = "岗位名称")
    private String postName;

    /** 显示顺序 */
    @TableField("post_sort")
    @Excel(name = "显示顺序")
    private Integer postSort;

    /** 状态（0正常 1停用） */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private String status;
    
    private String remark;


    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("postId", getPostId())
            .append("postCode", getPostCode())
            .append("postName", getPostName())
            .append("postSort", getPostSort())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}