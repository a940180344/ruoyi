package com.ruoyi.essay.domain;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 发布文章对象 essay
 * 
 * @author ruoyi
 * @date 2022-11-24
 */
public class Essay extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long essayId;

    /** 内容 */
    @Excel(name = "内容")
    private String essayContent;


    /** 标题 */
    @Excel(name = "标题")
    private String essayTitle;

    /** 文章标签 */
    @Excel(name = "文章标签")
    private String essayTag;

    /** 发布工作室 */
    @Excel(name = "发布工作室")
    private String essaySource;

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
    public void setEssaySource(String essaySource) 
    {
        this.essaySource = essaySource;
    }

    public String getEssaySource() 
    {
        return essaySource;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("essayId", getEssayId())
            .append("essayContent", getEssayContent())
            .append("essayTitle", getEssayTitle())
            .append("essayTag", getEssayTag())
            .append("essaySource", getEssaySource())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .toString();
    }
}
