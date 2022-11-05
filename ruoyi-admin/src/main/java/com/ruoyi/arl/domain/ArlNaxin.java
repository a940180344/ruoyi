package com.ruoyi.arl.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;

/**
 * naxin对象 arl_naxin
 * 
 * @author ruoyi
 * @date 2022-11-02
 */

@TableName(value = "arl_naxin")
public class ArlNaxin implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    @TableId(value = "id",type = IdType.AUTO)
    private Long id;

    /** 申请状态 */
    @Excel(name = "申请状态")
    private String start;

    /** 所属进程id */
    @Excel(name = "所属进程id")
    private Long hostId;

    /** 当前进行到的进程 */
    @Excel(name = "当前进行到的进程")
    private Long appOrder;

    /** 新增人姓名 */
    @Excel(name = "新增人姓名")
    private Long userId;

    /** 申请工作室 */
    @Excel(name = "申请工作室")
    private Long stioId;

    /** 申请理由 */
    @Excel(name = "申请理由")
    private String naxinReason;

    /** 修改意见 */
    @Excel(name = "修改意见")
    private String naxinOpinion;

    /** 审批人角色 */
    @Excel(name = "审批人角色")
    private Long naxinAppover;

    /** 其他说明 */
    @Excel(name = "其他说明")
    private String naxinShuoming;

    public Date getCreateTime() {
        return CreateTime;
    }

    public void setCreateTime(Date createTime) {
        CreateTime = createTime;
    }

    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date CreateTime;

    private String naxinQingk;

    private String naxinTechang;

    public String getNaxinQingk() {
        return naxinQingk;
    }

    public void setNaxinQingk(String naxinQingk) {
        this.naxinQingk = naxinQingk;
    }

    public String getNaxinTechang() {
        return naxinTechang;
    }

    public void setNaxinTechang(String naxinTechang) {
        this.naxinTechang = naxinTechang;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setStart(String start) 
    {
        this.start = start;
    }

    public String getStart() 
    {
        return start;
    }
    public void setHostId(Long hostId) 
    {
        this.hostId = hostId;
    }

    public Long getHostId() 
    {
        return hostId;
    }
    public void setAppOrder(Long appOrder) 
    {
        this.appOrder = appOrder;
    }

    public Long getAppOrder() 
    {
        return appOrder;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setStioId(Long stioId) 
    {
        this.stioId = stioId;
    }

    public Long getStioId() 
    {
        return stioId;
    }
    public void setNaxinReason(String naxinReason) 
    {
        this.naxinReason = naxinReason;
    }

    public String getNaxinReason() 
    {
        return naxinReason;
    }
    public void setNaxinOpinion(String naxinOpinion) 
    {
        this.naxinOpinion = naxinOpinion;
    }

    public String getNaxinOpinion() 
    {
        return naxinOpinion;
    }
    public void setNaxinAppover(Long naxinAppover) 
    {
        this.naxinAppover = naxinAppover;
    }

    public Long getNaxinAppover() 
    {
        return naxinAppover;
    }
    public void setNaxinShuoming(String naxinShuoming) 
    {
        this.naxinShuoming = naxinShuoming;
    }

    public String getNaxinShuoming() 
    {
        return naxinShuoming;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("start", getStart())
            .append("createTime", getCreateTime())
            .append("hostId", getHostId())
            .append("appOrder", getAppOrder())
            .append("userId", getUserId())
            .append("stioId", getStioId())
            .append("naxinReason", getNaxinReason())
            .append("naxinOpinion", getNaxinOpinion())
            .append("naxinAppover", getNaxinAppover())
            .append("naxinShuoming", getNaxinShuoming())
            .toString();
    }
}
