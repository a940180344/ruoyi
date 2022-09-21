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

/**
 * 【请填写功能名称】对象 arl_stio
 *
 * @author ruoyi
 * @date 2022-09-17
 */
@TableName(value = "arl_stio")
public class ArlStio implements Serializable
{

    /**  */
    @TableId(type = IdType.AUTO)
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

    public LocalDate getCreateTime() {
        return CreateTime;
    }

    public void setCreateTime(LocalDate createTime) {
        CreateTime = createTime;
    }

    @JsonFormat(pattern = "yyyy-MM-dd")
    private LocalDate CreateTime;

    /** 工作室名 */
    @Excel(name = "工作室名")
    private String stioName;

    /** 工作室所属老师 */
    @Excel(name = "工作室所属老师")
    private Long stioTeacher;

    /** 申请理由 */
    @Excel(name = "申请理由")
    private String stioReason;

    /** 所属学院 */
    @Excel(name = "所属学院")
    private String stioAcademy;

    /** 修改意见 */
    @Excel(name = "修改意见")
    private String stioOpinion;

    /** 审批人 */
    @Excel(name = "审批人")
    private Long stioAppover;

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
    public void setStioName(String stioName)
    {
        this.stioName = stioName;
    }

    public String getStioName()
    {
        return stioName;
    }
    public void setStioTeacher(Long stioTeacher)
    {
        this.stioTeacher = stioTeacher;
    }

    public Long getStioTeacher()
    {
        return stioTeacher;
    }
    public void setStioReason(String stioReason)
    {
        this.stioReason = stioReason;
    }

    public String getStioReason()
    {
        return stioReason;
    }
    public void setStioAcademy(String stioAcademy)
    {
        this.stioAcademy = stioAcademy;
    }

    public String getStioAcademy()
    {
        return stioAcademy;
    }
    public void setStioOpinion(String stioOpinion)
    {
        this.stioOpinion = stioOpinion;
    }

    public String getStioOpinion()
    {
        return stioOpinion;
    }
    public void setStioAppover(Long stioAppover)
    {
        this.stioAppover = stioAppover;
    }

    public Long getStioAppover()
    {
        return stioAppover;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("start", getStart())
                .append("createTime", getCreateTime())
                .append("hostId", getHostId())
                .append("appOrder", getAppOrder())
                .append("stioName", getStioName())
                .append("stioTeacher", getStioTeacher())
                .append("stioReason", getStioReason())
                .append("stioAcademy", getStioAcademy())
                .append("stioOpinion", getStioOpinion())
                .append("stioAppover", getStioAppover())
                .toString();
    }
}
