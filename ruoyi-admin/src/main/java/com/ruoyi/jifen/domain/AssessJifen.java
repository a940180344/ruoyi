package com.ruoyi.jifen.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * jifen对象 assess_jifen
 * 
 * @author ruoyi
 * @date 2023-03-08
 */
public class AssessJifen extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String studentName;

    /** 学生id */
    @Excel(name = "学生id")
    private String studentId;

    /** 积分 */
    @Excel(name = "积分")
    private Integer jifen;

    /** 获奖材料 */
    @Excel(name = "获奖材料")
    private String cailiao;

    private String state;
    /** 竞赛积分 */
    private Integer jingsai;

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    /** 奖项积分 */
    private Integer jiangxiang;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }

    public String getStudentName() 
    {
        return studentName;
    }
    public void setStudentId(String studentId) 
    {
        this.studentId = studentId;
    }

    public String getStudentId() 
    {
        return studentId;
    }
    public void setJifen(Integer jifen) 
    {
        this.jifen = jifen;
    }

    public Integer getJifen() 
    {
        return jifen;
    }
    public void setCailiao(String cailiao) 
    {
        this.cailiao = cailiao;
    }

    public String getCailiao() 
    {
        return cailiao;
    }
    public void setJingsai(Integer jingsai) 
    {
        this.jingsai = jingsai;
    }

    public Integer getJingsai() 
    {
        return jingsai;
    }
    public void setJiangxiang(Integer jiangxiang) 
    {
        this.jiangxiang = jiangxiang;
    }

    public Integer getJiangxiang() 
    {
        return jiangxiang;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("studentName", getStudentName())
            .append("studentId", getStudentId())
            .append("jifen", getJifen())
            .append("cailiao", getCailiao())
            .append("createTime", getCreateTime())
            .append("jingsai", getJingsai())
            .append("jiangxiang", getJiangxiang())
            .toString();
    }
}
