package com.ruoyi.essay.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 发布文章对象 essay
 * 
 * @author ruoyi
 * @date 2022-08-08
 */
public class Essay extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long essayId;

    /** 内容 */
    @Excel(name = "内容")
    private String essayContent;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date essayTime;

    /** 创建者 */
    @Excel(name = "创建者")
    private String essayUser;

    /** 标题 */
    @Excel(name = "标题")
    private String essayTitle;

    /** 文章类型 */
    @Excel(name = "文章类型")
    private String essayTag;

    public void setEssayId(Long essayId)
    {
        this.essayId = essayId;
    }

    public Long getEssayId()
    {
        return essayId;
    }
    public void setEssayContent(String essayContent)
    {
        this.essayContent = essayContent;
    }

    public String getEssayContent()
    {
        return essayContent;
    }
    public void setEssayTime(Date essayTime)
    {
        this.essayTime = essayTime;
    }

    public Date getEssayTime()
    {
        return essayTime;
    }
    public void setEssayUser(String essayUser)
    {
        this.essayUser = essayUser;
    }

    public String getEssayUser()
    {
        return essayUser;
    }
    public void setEssayTitle(String essayTitle)
    {
        this.essayTitle = essayTitle;
    }

    public String getEssayTitle()
    {
        return essayTitle;
    }
    public void setEssayTag(String essayTag)
    {
        this.essayTag = essayTag;
    }

    public String getEssayTag()
    {
        return essayTag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("essayId", getEssayId())
                .append("essayContent", getEssayContent())
                .append("essayTime", getEssayTime())
                .append("essayUser", getEssayUser())
                .append("essayTitle", getEssayTitle())
                .append("essayTag", getEssayTag())
                .toString();


    }
}

