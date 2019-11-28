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
 * 参数配置表 sys_config
 *
 * @author Carry xie
 * @date 2019-11-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_config")
public class Config  extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    /** 参数主键 */
     @TableId(value="config_id", type= IdType.AUTO)
      private Integer configId;

    /** 参数名称 */
    @TableField("config_name")
    @Excel(name = "参数名称")
    private String configName;

    /** 参数键名 */
    @TableField("config_key")
    @Excel(name = "参数键名")
    private String configKey;

    /** 参数键值 */
    @TableField("config_value")
    @Excel(name = "参数键值")
    private String configValue;

    /** 系统内置（Y是 N否） */
    @TableField("config_type")
    @Excel(name = "系统内置", readConverterExp = "Y=是,N=否")
    private String configType;

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("configId", getConfigId())
            .append("configName", getConfigName())
            .append("configKey", getConfigKey())
            .append("configValue", getConfigValue())
            .append("configType", getConfigType())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}