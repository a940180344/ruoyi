package com.ruoyi.course.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * course对象 assess_course
 * 
 * @author ruoyi
 * @date 2023-03-07
 */
public class AssessCourse extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 免听申请.置换申请 */
    @Excel(name = "免听申请.置换申请")
    private String applyType;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String studentName;

    /** 学生id */
    @Excel(name = "学生id")
    private Long studentId;

    /** 学号 */
    @Excel(name = "学号")
    private String studentNumber;

    /** 所在工作室名称 */
    @Excel(name = "所在工作室名称")
    private String studioName;

    /** 所在工作室id */
    @Excel(name = "所在工作室id")
    private Long studioId;

    /** 申请免听课程开课单位 */
    @Excel(name = "申请免听课程开课单位")
    private String courseUnit;

    /** 申请免听课程开课单位id */
    @Excel(name = "申请免听课程开课单位id")
    private Long courseUnitId;

    /** 自己在这个工作室工作的内容 */
    @Excel(name = "自己在这个工作室工作的内容")
    private String content;

    /** 课程/学分名称 */
    @Excel(name = "课程/学分名称")
    private String courseName;

    /** 创建者dept_id */
    @Excel(name = "创建者dept_id")
    private Long deptId;

    /** 完成状态） */
    @Excel(name = "完成状态）")
    private String finishStatus;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setApplyType(String applyType) 
    {
        this.applyType = applyType;
    }

    public String getApplyType() 
    {
        return applyType;
    }
    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }

    public String getStudentName() 
    {
        return studentName;
    }
    public void setStudentId(Long studentId) 
    {
        this.studentId = studentId;
    }

    public Long getStudentId() 
    {
        return studentId;
    }
    public void setStudentNumber(String studentNumber) 
    {
        this.studentNumber = studentNumber;
    }

    public String getStudentNumber() 
    {
        return studentNumber;
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
    public void setCourseUnit(String courseUnit) 
    {
        this.courseUnit = courseUnit;
    }

    public String getCourseUnit() 
    {
        return courseUnit;
    }
    public void setCourseUnitId(Long courseUnitId) 
    {
        this.courseUnitId = courseUnitId;
    }

    public Long getCourseUnitId() 
    {
        return courseUnitId;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setCourseName(String courseName) 
    {
        this.courseName = courseName;
    }

    public String getCourseName() 
    {
        return courseName;
    }
    public void setDeptId(Long deptId) 
    {
        this.deptId = deptId;
    }

    public Long getDeptId() 
    {
        return deptId;
    }
    public void setFinishStatus(String finishStatus) 
    {
        this.finishStatus = finishStatus;
    }

    public String getFinishStatus() 
    {
        return finishStatus;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("applyType", getApplyType())
            .append("studentName", getStudentName())
            .append("studentId", getStudentId())
            .append("studentNumber", getStudentNumber())
            .append("studioName", getStudioName())
            .append("studioId", getStudioId())
            .append("courseUnit", getCourseUnit())
            .append("courseUnitId", getCourseUnitId())
            .append("content", getContent())
            .append("courseName", getCourseName())
            .append("deptId", getDeptId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("finishStatus", getFinishStatus())
            .toString();
    }
}
