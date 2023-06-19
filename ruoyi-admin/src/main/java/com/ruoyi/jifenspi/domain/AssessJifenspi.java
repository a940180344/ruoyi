package com.ruoyi.jifenspi.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * jifenspi对象 assess_jifenspi
 * 
 * @author ruoyi
 * @date 2023-03-09
 */
public class AssessJifenspi extends BaseEntity
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

    /** 竞赛积分 */
    private Integer jingsai;

    /** 奖项积分 */
    private Integer jiangxiang;

    /** 教务审批人员 */
    private Integer jiaowu;

    /** 状态 */
    private String state;

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
    public void setJiaowu(Integer jiaowu) 
    {
        this.jiaowu = jiaowu;
    }

    public Integer getJiaowu() 
    {
        return jiaowu;
    }
    public void setState(String state) 
    {
        this.state = state;
    }

    public String getState() 
    {
        return state;
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
            .append("jiaowu", getJiaowu())
            .append("state", getState())
            .toString();
    }
}
