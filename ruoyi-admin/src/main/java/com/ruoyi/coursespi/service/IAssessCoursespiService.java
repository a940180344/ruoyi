package com.ruoyi.coursespi.service;

import java.util.List;
import com.ruoyi.coursespi.domain.AssessCoursespi;

/**
 * coursespiService接口
 * 
 * @author ruoyi
 * @date 2023-03-09
 */
public interface IAssessCoursespiService 
{
    /**
     * 查询coursespi
     * 
     * @param id coursespi主键
     * @return coursespi
     */
    public AssessCoursespi selectAssessCoursespiById(Long id);

    /**
     * 查询coursespi列表
     * 
     * @param assessCoursespi coursespi
     * @return coursespi集合
     */
    public List<AssessCoursespi> selectAssessCoursespiList(AssessCoursespi assessCoursespi);

    /**
     * 新增coursespi
     * 
     * @param assessCoursespi coursespi
     * @return 结果
     */
    public int insertAssessCoursespi(AssessCoursespi assessCoursespi);

    /**
     * 修改coursespi
     * 
     * @param assessCoursespi coursespi
     * @return 结果
     */
    public int updateAssessCoursespi(AssessCoursespi assessCoursespi);

    /**
     * 批量删除coursespi
     * 
     * @param ids 需要删除的coursespi主键集合
     * @return 结果
     */
    public int deleteAssessCoursespiByIds(Long[] ids);

    /**
     * 删除coursespi信息
     * 
     * @param id coursespi主键
     * @return 结果
     */
    public int deleteAssessCoursespiById(Long id);
}
