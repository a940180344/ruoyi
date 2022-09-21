package com.ruoyi.naxin.domain;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 工作室申请对象 stu_shenqing
 *
 * @author ruoyi
 * @date 2022-09-19
 */
@TableName(value = "stu_shenqing")
public class StuShenqing implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String name;

    /** 学生学号 */
    @Excel(name = "学生学号")
    private Long studentid;

    /** 学生性别 */
    @Excel(name = "学生性别")
    private String stuSex;

    /** 学生年级 */
    @Excel(name = "学生年级")
    private String stuGrade;

    /** 学生班级 */
    @Excel(name = "学生班级")
    private String stuClass;

    /** 学习情况 */
    @Excel(name = "学习情况")
    private String stuStudy;

    /** 个人特长 */
    @Excel(name = "个人特长")
    private String stuSpeciality;

    /** 学习方向 */
    @Excel(name = "学习方向")
    private String stuXxfx;

    /** 个人简介 */
    @Excel(name = "个人简介")
    private String stuGrjj;

    /** 个人附件 */
    @Excel(name = "个人附件")
    private String stuFujian;

    /** 学生学院 */
    @Excel(name = "学生学院")
    private String stuAcademy;

    private int deptId;

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    /** 申请时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "申请时间", width = 30, dateFormat = "yyyy-MM-dd")
    private LocalDate stuTime;

    /** 审批状态 */
    @Excel(name = "审批状态")
    private String stuStarts;

    private String  jujueLiyou;

    public String getJujueLiyou() {
        return jujueLiyou;
    }

    public void setJujueLiyou(String jujueLiyou) {
        this.jujueLiyou = jujueLiyou;
    }

    public Long getJujueMan() {
        return jujueMan;
    }

    public void setJujueMan(Long jujueMan) {
        this.jujueMan = jujueMan;
    }

    private Long jujueMan;

    /** id */
    private Long id;

    private LocalDate boHui;

    public LocalDate getBoHui() {
        return boHui;
    }

    public void setBoHui(LocalDate boHui) {
        this.boHui = boHui;
    }

    /** 审批次数 */
    @Excel(name = "审批次数")
    private Long starts;

    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
    public void setStudentid(Long studentid)
    {
        this.studentid = studentid;
    }

    public Long getStudentid()
    {
        return studentid;
    }
    public void setStuSex(String stuSex)
    {
        this.stuSex = stuSex;
    }

    public String getStuSex()
    {
        return stuSex;
    }
    public void setStuGrade(String stuGrade)
    {
        this.stuGrade = stuGrade;
    }

    public String getStuGrade()
    {
        return stuGrade;
    }
    public void setStuClass(String stuClass)
    {
        this.stuClass = stuClass;
    }

    public String getStuClass()
    {
        return stuClass;
    }
    public void setStuStudy(String stuStudy)
    {
        this.stuStudy = stuStudy;
    }

    public String getStuStudy()
    {
        return stuStudy;
    }
    public void setStuSpeciality(String stuSpeciality)
    {
        this.stuSpeciality = stuSpeciality;
    }

    public String getStuSpeciality()
    {
        return stuSpeciality;
    }
    public void setStuXxfx(String stuXxfx)
    {
        this.stuXxfx = stuXxfx;
    }

    public String getStuXxfx()
    {
        return stuXxfx;
    }
    public void setStuGrjj(String stuGrjj)
    {
        this.stuGrjj = stuGrjj;
    }

    public String getStuGrjj()
    {
        return stuGrjj;
    }
    public void setStuFujian(String stuFujian)
    {
        this.stuFujian = stuFujian;
    }

    public String getStuFujian()
    {
        return stuFujian;
    }
    public void setStuAcademy(String stuAcademy)
    {
        this.stuAcademy = stuAcademy;
    }

    public String getStuAcademy()
    {
        return stuAcademy;
    }
    public void setStuTime(LocalDate stuTime)
    {
        this.stuTime = stuTime;
    }

    public LocalDate getStuTime()
    {
        return stuTime;
    }
    public void setStuStarts(String stuStarts)
    {
        this.stuStarts = stuStarts;
    }

    public String getStuStarts()
    {
        return stuStarts;
    }
    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setStarts(Long starts)
    {
        this.starts = starts;
    }

    public Long getStarts()
    {
        return starts;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("name", getName())
                .append("studentid", getStudentid())
                .append("stuSex", getStuSex())
                .append("stuGrade", getStuGrade())
                .append("stuClass", getStuClass())
                .append("stuStudy", getStuStudy())
                .append("stuSpeciality", getStuSpeciality())
                .append("stuXxfx", getStuXxfx())
                .append("stuGrjj", getStuGrjj())
                .append("stuFujian", getStuFujian())
                .append("stuAcademy", getStuAcademy())
                .append("stuTime", getStuTime())
                .append("stuStarts", getStuStarts())
                .append("id", getId())
                .append("starts", getStarts())
                .toString();
    }
}
