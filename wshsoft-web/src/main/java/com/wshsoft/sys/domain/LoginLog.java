package com.wshsoft.sys.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wshsoft.common.annotation.Excel;
import java.io.Serializable;
import com.wshsoft.common.core.domain.BaseEntity;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * 系统访问记录表 sys_login_log
 *
 * @author Carry xie
 * @date 2019-11-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_login_log")
public class LoginLog  implements Serializable {
    private static final long serialVersionUID = 1L;

    /** 访问ID */
     @TableId(value="log_id", type= IdType.AUTO)
      private Long logId;

    /** 登录账号 */
    @TableField("login_name")
    @Excel(name = "登录账号")
    private String loginName;

    /** 登录IP地址 */
    @TableField("ip_address")
    @Excel(name = "登录IP地址")
    private String ipAddress;

    /** 登录地点 */
    @TableField("login_location")
    @Excel(name = "登录地点")
    private String loginLocation;

    /** 浏览器类型 */
    @Excel(name = "浏览器类型")
    private String browser;

    /** 操作系统 */
    @Excel(name = "操作系统")
    private String os;

    /** 登录状态（0成功 1失败） */
    @Excel(name = "登录状态", readConverterExp = "0=成功,1=失败")
    private String status;

    /** 提示消息 */
    @Excel(name = "提示消息")
    private String msg;

    /** 访问时间 */
    @TableField("login_time")
    @Excel(name = "访问时间", width = 30, dateFormat = "yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date loginTime;


    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("logId", getLogId())
            .append("loginName", getLoginName())
            .append("ipAddress", getIpAddress())
            .append("loginLocation", getLoginLocation())
            .append("browser", getBrowser())
            .append("os", getOs())
            .append("status", getStatus())
            .append("msg", getMsg())
            .append("loginTime", getLoginTime())
            .toString();
    }
}