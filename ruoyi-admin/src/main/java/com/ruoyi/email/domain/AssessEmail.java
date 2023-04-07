package com.ruoyi.email.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * email对象 assess_email
 * 
 * @author ruoyi
 * @date 2023-03-13
 */
public class AssessEmail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 发送人 */
    @Excel(name = "发送人")
    private String fasonguser;

    /** 接收人 */
    @Excel(name = "接收人")
    private String jieshouuser;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setFasonguser(String fasonguser) 
    {
        this.fasonguser = fasonguser;
    }

    public String getFasonguser() 
    {
        return fasonguser;
    }
    public void setJieshouuser(String jieshouuser) 
    {
        this.jieshouuser = jieshouuser;
    }

    public String getJieshouuser() 
    {
        return jieshouuser;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("fasonguser", getFasonguser())
            .append("jieshouuser", getJieshouuser())
            .append("content", getContent())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .toString();
    }
}
