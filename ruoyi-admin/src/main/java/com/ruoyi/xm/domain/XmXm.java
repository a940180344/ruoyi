package com.ruoyi.xm.domain;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 新增项目对象 xm_xm
 * 
 * @author ruoyi
 * @date 2022-11-13
 */
@TableName(value = "xm_xm")
public class XmXm implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    @TableId(value = "id",type = IdType.AUTO)
    private Long id;

    /** 所属工作室id */
    private Long deptId;

    /** 项目名 */
    @Excel(name = "项目名")
    private String xmName;

    /** 项目创建时间 */
    private Date xmCreateTime;

    /** 项目简介 */
    @Excel(name = "项目简介")
    private String xmJianJie;

    /** 项目成员 */
    @Excel(name = "项目成员")
    private String xmUser;

    /** 项目所属 */
    @Excel(name = "项目所属")
    private Long xmLeader;

    /** 项目文件 */
    @Excel(name = "项目文件")
    private String xmWenJie;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setDeptId(Long deptId) 
    {
        this.deptId = deptId;
    }

    public Long getDeptId() 
    {
        return deptId;
    }
    public void setXmName(String xmName) 
    {
        this.xmName = xmName;
    }

    public String getXmName() 
    {
        return xmName;
    }
    public void setXmCreateTime(Date xmCreateTime) 
    {
        this.xmCreateTime = xmCreateTime;
    }

    public Date getXmCreateTime() 
    {
        return xmCreateTime;
    }
    public void setXmJianJie(String xmJianJie) 
    {
        this.xmJianJie = xmJianJie;
    }

    public String getXmJianJie() 
    {
        return xmJianJie;
    }
    public void setXmUser(String xmUser) 
    {
        this.xmUser = xmUser;
    }

    public String getXmUser() 
    {
        return xmUser;
    }
    public void setXmLeader(Long xmLeader) 
    {
        this.xmLeader = xmLeader;
    }

    public Long getXmLeader() 
    {
        return xmLeader;
    }
    public void setXmWenJie(String xmWenJie) 
    {
        this.xmWenJie = xmWenJie;
    }

    public String getXmWenJie() 
    {
        return xmWenJie;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("deptId", getDeptId())
            .append("xmName", getXmName())
            .append("xmCreateTime", getXmCreateTime())
            .append("xmJianJie", getXmJianJie())
            .append("xmUser", getXmUser())
            .append("xmLeader", getXmLeader())
            .append("xmWenJie", getXmWenJie())
            .toString();
    }
}
