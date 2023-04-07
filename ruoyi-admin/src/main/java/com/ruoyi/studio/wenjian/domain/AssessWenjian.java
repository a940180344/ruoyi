package com.ruoyi.studio.wenjian.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * wenjian对象 assess_wenjian
 * 
 * @author ruoyi
 * @date 2023-03-09
 */
public class AssessWenjian extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 文件 */
    @Excel(name = "文件")
    private String wenjian;

    /** 说明 */
    @Excel(name = "说明")
    private String shuoming;

    /** 工作室所属 */
    private Integer deptId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setWenjian(String wenjian) 
    {
        this.wenjian = wenjian;
    }

    public String getWenjian() 
    {
        return wenjian;
    }
    public void setShuoming(String shuoming) 
    {
        this.shuoming = shuoming;
    }

    public String getShuoming() 
    {
        return shuoming;
    }
    public void setDeptId(Integer deptId) 
    {
        this.deptId = deptId;
    }

    public Integer getDeptId() 
    {
        return deptId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("id", getId())
            .append("wenjian", getWenjian())
            .append("shuoming", getShuoming())
            .append("deptId", getDeptId())
            .toString();
    }
}
