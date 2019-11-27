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
 * 操作日志记录表 sys_oper_log
 *
 * @author Carry xie
 * @date 2019-11-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_oper_log")
public class OperLog implements Serializable {
    private static final long serialVersionUID = 1L;

    /** 日志主键 */
     @TableId(value="oper_id", type= IdType.AUTO)
      private Long operId;

    /** 模块标题 */
    @Excel(name = "模块标题")
    private String title;

    /** 业务类型（0其它 1新增 2修改 3删除） */
    @TableField("business_type")
    @Excel(name = "业务类型", readConverterExp = "0=其它,1=新增,2=修改,3=删除")
    private Integer businessType;

    /** 方法名称 */
    @Excel(name = "方法名称")
    private String method;

    /** 请求方式 */
    @TableField("request_method")
    @Excel(name = "请求方式")
    private String requestMethod;

    /** 操作类别（0其它 1后台用户 2手机端用户） */
    @TableField("operator_type")
    @Excel(name = "操作类别", readConverterExp = "0=其它,1=后台用户,2=手机端用户")
    private Integer operatorType;

    /** 操作人员 */
    @TableField("oper_name")
    @Excel(name = "操作人员")
    private String operName;

    /** 部门名称 */
    @TableField("dept_name")
    @Excel(name = "部门名称")
    private String deptName;

    /** 请求URL */
    @TableField("oper_url")
    @Excel(name = "请求URL")
    private String operUrl;

    /** 主机地址 */
    @TableField("oper_ip")
    @Excel(name = "主机地址")
    private String operIp;

    /** 操作地点 */
    @TableField("oper_location")
    @Excel(name = "操作地点")
    private String operLocation;

    /** 请求参数 */
    @TableField("oper_param")
    @Excel(name = "请求参数")
    private String operParam;

    /** 返回参数 */
    @TableField("json_result")
    @Excel(name = "返回参数")
    private String jsonResult;

    /** 操作状态（0正常 1异常） */
    @Excel(name = "操作状态", readConverterExp = "0=正常,1=异常")
    private Integer status;

    /** 错误消息 */
    @TableField("error_msg")
    @Excel(name = "错误消息")
    private String errorMsg;

    /** 操作时间 */
    @TableField("oper_time")
    @Excel(name = "操作时间", width = 30, dateFormat = "yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date operTime;


    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("operId", getOperId())
            .append("title", getTitle())
            .append("businessType", getBusinessType())
            .append("method", getMethod())
            .append("requestMethod", getRequestMethod())
            .append("operatorType", getOperatorType())
            .append("operName", getOperName())
            .append("deptName", getDeptName())
            .append("operUrl", getOperUrl())
            .append("operIp", getOperIp())
            .append("operLocation", getOperLocation())
            .append("operParam", getOperParam())
            .append("jsonResult", getJsonResult())
            .append("status", getStatus())
            .append("errorMsg", getErrorMsg())
            .append("operTime", getOperTime())
            .toString();
    }
}