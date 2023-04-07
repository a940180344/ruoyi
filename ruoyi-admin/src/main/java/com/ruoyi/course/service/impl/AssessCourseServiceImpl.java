package com.ruoyi.course.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.course.mapper.AssessCourseMapper;
import com.ruoyi.course.domain.AssessCourse;
import com.ruoyi.course.service.IAssessCourseService;

/**
 * courseService业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-07
 */
@Service
public class AssessCourseServiceImpl implements IAssessCourseService 
{
    @Autowired
    private AssessCourseMapper assessCourseMapper;

    /**
     * 查询course
     * 
     * @param id course主键
     * @return course
     */
    @Override
    public AssessCourse selectAssessCourseById(Long id)
    {
        return assessCourseMapper.selectAssessCourseById(id);
    }

    /**
     * 查询course列表
     * 
     * @param assessCourse course
     * @return course
     */
    @Override
    public List<AssessCourse> selectAssessCourseList(AssessCourse assessCourse)
    {
        return assessCourseMapper.selectAssessCourseList(assessCourse);
    }

    /**
     * 新增course
     * 
     * @param assessCourse course
     * @return 结果
     */
    @Override
    public int insertAssessCourse(AssessCourse assessCourse)
    {
        assessCourse.setCreateTime(DateUtils.getNowDate());
        return assessCourseMapper.insertAssessCourse(assessCourse);
    }

    /**
     * 修改course
     * 
     * @param assessCourse course
     * @return 结果
     */
    @Override
    public int updateAssessCourse(AssessCourse assessCourse)
    {
        return assessCourseMapper.updateAssessCourse(assessCourse);
    }

    /**
     * 批量删除course
     * 
     * @param ids 需要删除的course主键
     * @return 结果
     */
    @Override
    public int deleteAssessCourseByIds(Long[] ids)
    {
        return assessCourseMapper.deleteAssessCourseByIds(ids);
    }

    /**
     * 删除course信息
     * 
     * @param id course主键
     * @return 结果
     */
    @Override
    public int deleteAssessCourseById(Long id)
    {
        return assessCourseMapper.deleteAssessCourseById(id);
    }
}
