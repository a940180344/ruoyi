package com.ruoyi.naxin.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 纳新对象 studio_stu
 * 
 * @author ruoyi
 * @date 2022-08-16
 */
public class StudioStu extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    @Excel(name = "id")
    private Long dioId;

    /** name */
    @Excel(name = "name")
    private String dioName;

    /** 学生学号 */
    @Excel(name = "学生学号")
    private String dioStudentId;

    /** 申请理由 */
    @Excel(name = "申请理由")
    private String dioReason;

    /** 工作室id */
    @Excel(name = "工作室id")
    private Long dioStudioId;

    /** 审批状态 */
    @Excel(name = "审批状态")
    private String dioStarts;

    public void setDioId(Long dioId) 
    {
        this.dioId = dioId;
    }

    public Long getDioId() 
    {
        return dioId;
    }
    public void setDioName(String dioName) 
    {
        this.dioName = dioName;
    }

    public String getDioName() 
    {
        return dioName;
    }
    public void setDioStudentId(String dioStudentId) 
    {
        this.dioStudentId = dioStudentId;
    }

    public String getDioStudentId() 
    {
        return dioStudentId;
    }
    public void setDioReason(String dioReason) 
    {
        this.dioReason = dioReason;
    }

    public String getDioReason() 
    {
        return dioReason;
    }
    public void setDioStudioId(Long dioStudioId) 
    {
        this.dioStudioId = dioStudioId;
    }

    public Long getDioStudioId() 
    {
        return dioStudioId;
    }
    public void setDioStarts(String dioStarts) 
    {
        this.dioStarts = dioStarts;
    }

    public String getDioStarts() 
    {
        return dioStarts;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("dioId", getDioId())
            .append("dioName", getDioName())
            .append("dioStudentId", getDioStudentId())
            .append("dioReason", getDioReason())
            .append("dioStudioId", getDioStudioId())
            .append("dioStarts", getDioStarts())
            .toString();
    }
}
