package com.ruoyi.jifen.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * jifen对象 al_jifen
 * 
 * @author ruoyi
 * @date 2023-05-03
 */
public class AlJifen extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 用户名 */
    @Excel(name = "用户名")
    private String user;

    /** id */
    private Long id;

    /** 积分 */
    @Excel(name = "积分")
    private String jifen;

    /** 项目名 */
    @Excel(name = "项目名")
    private String xmuming;

    public void setUser(String user) 
    {
        this.user = user;
    }

    public String getUser() 
    {
        return user;
    }
    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setJifen(String jifen) 
    {
        this.jifen = jifen;
    }

    public String getJifen() 
    {
        return jifen;
    }
    public void setXmuming(String xmuming) 
    {
        this.xmuming = xmuming;
    }

    public String getXmuming() 
    {
        return xmuming;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("user", getUser())
            .append("id", getId())
            .append("jifen", getJifen())
            .append("createTime", getCreateTime())
            .append("xmuming", getXmuming())
            .toString();
    }
}
