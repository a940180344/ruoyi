package com.ruoyi.course.mapper;

import java.util.List;
import com.ruoyi.course.domain.AssessCourse;

/**
 * courseMapper接口
 * 
 * @author ruoyi
 * @date 2023-03-07
 */
public interface AssessCourseMapper 
{
    /**
     * 查询course
     * 
     * @param id course主键
     * @return course
     */
    public AssessCourse selectAssessCourseById(Long id);

    /**
     * 查询course列表
     * 
     * @param assessCourse course
     * @return course集合
     */
    public List<AssessCourse> selectAssessCourseList(AssessCourse assessCourse);

    /**
     * 新增course
     * 
     * @param assessCourse course
     * @return 结果
     */
    public int insertAssessCourse(AssessCourse assessCourse);

    /**
     * 修改course
     * 
     * @param assessCourse course
     * @return 结果
     */
    public int updateAssessCourse(AssessCourse assessCourse);

    /**
     * 删除course
     * 
     * @param id course主键
     * @return 结果
     */
    public int deleteAssessCourseById(Long id);

    /**
     * 批量删除course
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssessCourseByIds(Long[] ids);
}
