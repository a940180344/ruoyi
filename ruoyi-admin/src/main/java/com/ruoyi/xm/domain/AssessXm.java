package com.ruoyi.xm.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * xm对象 assess_xm
 * 
 * @author ruoyi
 * @date 2023-03-13
 */
public class AssessXm extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 所在工作室名称 */
    @Excel(name = "所在工作室名称")
    private String studioName;

    /** 所在工作室id */
    @Excel(name = "所在工作室id")
    private Long studioId;

    /** 项目名 */
    @Excel(name = "项目名")
    private String xmName;

    /** 项目成员 */
    @Excel(name = "项目成员")
    private String xmUser;

    /** 文件 */
    @Excel(name = "文件")
    private String wenjian;

    /** 描述 */
    @Excel(name = "描述")
    private String xmMiaosu;

    /** 状态 */
    @Excel(name = "状态")
    private String state;

    /** 积分 */
    @Excel(name = "积分")
    private String jifen;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setStudioName(String studioName) 
    {
        this.studioName = studioName;
    }

    public String getStudioName() 
    {
        return studioName;
    }
    public void setStudioId(Long studioId) 
    {
        this.studioId = studioId;
    }

    public Long getStudioId() 
    {
        return studioId;
    }
    public void setXmName(String xmName) 
    {
        this.xmName = xmName;
    }

    public String getXmName() 
    {
        return xmName;
    }
    public void setXmUser(String xmUser) 
    {
        this.xmUser = xmUser;
    }

    public String getXmUser() 
    {
        return xmUser;
    }
    public void setWenjian(String wenjian) 
    {
        this.wenjian = wenjian;
    }

    public String getWenjian() 
    {
        return wenjian;
    }
    public void setXmMiaosu(String xmMiaosu) 
    {
        this.xmMiaosu = xmMiaosu;
    }

    public String getXmMiaosu() 
    {
        return xmMiaosu;
    }
    public void setState(String state) 
    {
        this.state = state;
    }

    public String getState() 
    {
        return state;
    }
    public void setJifen(String jifen) 
    {
        this.jifen = jifen;
    }

    public String getJifen() 
    {
        return jifen;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("studioName", getStudioName())
            .append("studioId", getStudioId())
            .append("xmName", getXmName())
            .append("xmUser", getXmUser())
            .append("wenjian", getWenjian())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("xmMiaosu", getXmMiaosu())
            .append("state", getState())
            .append("jifen", getJifen())
            .toString();
    }
}
