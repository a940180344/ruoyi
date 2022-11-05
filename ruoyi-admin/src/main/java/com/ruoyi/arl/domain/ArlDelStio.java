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
import java.util.Date;

/**
 * delStio对象 arl_del_stio
 * 
 * @author ruoyi
 * @date 2022-11-02
 */
@TableName(value = "arl_del_stio")
public class ArlDelStio implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    @TableId(value = "id",type = IdType.AUTO)
    private Long id;

    /** 状态 */
    @Excel(name = "状态")
    private String start;

    /** 所属进程id */
    @Excel(name = "所属进程id")
    private Long hostId;

    /** 当前进行到的进程 */
    @Excel(name = "当前进行到的进程")
    private Long appOrder;

    /** 工作室名 */
    @Excel(name = "工作室名")
    private String delStioName;

    /** 申请理由 */
    @Excel(name = "申请理由")
    private String delStioReason;

    /** 修改意见 */
    @Excel(name = "修改意见")
    private String delStioOpinion;

    /** 审批人角色 */
    @Excel(name = "审批人角色")
    private Long delStioAppover;


    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date CreateTime;

    private Long userId;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Date getCreateTime() {
        return CreateTime;
    }

    public void setCreateTime(Date createTime) {
        CreateTime = createTime;
    }

    /** 其他说明 */
    @Excel(name = "其他说明")
    private String dekStioShuoming;

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
    public void setDelStioName(String delStioName) 
    {
        this.delStioName = delStioName;
    }

    public String getDelStioName() 
    {
        return delStioName;
    }
    public void setDelStioReason(String delStioReason) 
    {
        this.delStioReason = delStioReason;
    }

    public String getDelStioReason() 
    {
        return delStioReason;
    }
    public void setDelStioOpinion(String delStioOpinion) 
    {
        this.delStioOpinion = delStioOpinion;
    }

    public String getDelStioOpinion() 
    {
        return delStioOpinion;
    }
    public void setDelStioAppover(Long delStioAppover) 
    {
        this.delStioAppover = delStioAppover;
    }

    public Long getDelStioAppover() 
    {
        return delStioAppover;
    }
    public void setDekStioShuoming(String dekStioShuoming) 
    {
        this.dekStioShuoming = dekStioShuoming;
    }

    public String getDekStioShuoming() 
    {
        return dekStioShuoming;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("start", getStart())
            .append("hostId", getHostId())
            .append("appOrder", getAppOrder())
            .append("delStioName", getDelStioName())
            .append("delStioReason", getDelStioReason())
            .append("delStioOpinion", getDelStioOpinion())
            .append("delStioAppover", getDelStioAppover())
            .append("dekStioShuoming", getDekStioShuoming())
            .toString();
    }
}
