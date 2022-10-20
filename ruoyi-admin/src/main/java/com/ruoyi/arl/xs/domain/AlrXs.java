package com.ruoyi.arl.xs.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import javax.xml.crypto.Data;
import java.io.Serializable;
import java.util.Date;

/**
 * 协商对象 alr_xs
 * 
 * @author ruoyi
 * @date 2022-10-13
 */
@TableName(value = "arl_xs")
public class AlrXs implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long xsId;

    /** 所属进程id */
    private Long id;

    /** 所属进程Host_id */
    @Excel(name = "所属进程Host_id")
    private Long hostId;

    /** 修改内容(审批人) */
    @Excel(name = "修改内容(审批人)")
    private String xsContxtApper;

    /** 协商文件添加 */
    @Excel(name = "协商文件添加")
    private String xsFile;

    /** 修改内容(提交人) */
    @Excel(name = "修改内容(提交人)")
    private String xsContxtTeacher;

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    private Date createTime;

    public void setXsId(Long xsId) 
    {
        this.xsId = xsId;
    }

    public Long getXsId() 
    {
        return xsId;
    }
    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setHostId(Long hostId) 
    {
        this.hostId = hostId;
    }

    public Long getHostId() 
    {
        return hostId;
    }
    public void setXsContxtApper(String xsContxtApper) 
    {
        this.xsContxtApper = xsContxtApper;
    }

    public String getXsContxtApper() 
    {
        return xsContxtApper;
    }
    public void setXsFile(String xsFile) 
    {
        this.xsFile = xsFile;
    }

    public String getXsFile() 
    {
        return xsFile;
    }
    public void setXsContxtTeacher(String xsContxtTeacher) 
    {
        this.xsContxtTeacher = xsContxtTeacher;
    }

    public String getXsContxtTeacher() 
    {
        return xsContxtTeacher;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("xsId", getXsId())
            .append("id", getId())
            .append("hostId", getHostId())
            .append("xsContxtApper", getXsContxtApper())
            .append("xsFile", getXsFile())
            .append("xsContxtTeacher", getXsContxtTeacher())
            .append("createTime", getCreateTime())
            .toString();
    }
}
