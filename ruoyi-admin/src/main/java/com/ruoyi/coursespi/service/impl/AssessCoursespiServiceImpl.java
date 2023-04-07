package com.ruoyi.coursespi.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.coursespi.mapper.AssessCoursespiMapper;
import com.ruoyi.coursespi.domain.AssessCoursespi;
import com.ruoyi.coursespi.service.IAssessCoursespiService;

/**
 * coursespiService业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-09
 */
@Service
public class AssessCoursespiServiceImpl implements IAssessCoursespiService 
{
    @Autowired
    private AssessCoursespiMapper assessCoursespiMapper;

    /**
     * 查询coursespi
     * 
     * @param id coursespi主键
     * @return coursespi
     */
    @Override
    public AssessCoursespi selectAssessCoursespiById(Long id)
    {
        return assessCoursespiMapper.selectAssessCoursespiById(id);
    }

    /**
     * 查询coursespi列表
     * 
     * @param assessCoursespi coursespi
     * @return coursespi
     */
    @Override
    public List<AssessCoursespi> selectAssessCoursespiList(AssessCoursespi assessCoursespi)
    {
        return assessCoursespiMapper.selectAssessCoursespiList(assessCoursespi);
    }

    /**
     * 新增coursespi
     * 
     * @param assessCoursespi coursespi
     * @return 结果
     */
    @Override
    public int insertAssessCoursespi(AssessCoursespi assessCoursespi)
    {
        assessCoursespi.setCreateTime(DateUtils.getNowDate());
        return assessCoursespiMapper.insertAssessCoursespi(assessCoursespi);
    }

    /**
     * 修改coursespi
     * 
     * @param assessCoursespi coursespi
     * @return 结果
     */
    @Override
    public int updateAssessCoursespi(AssessCoursespi assessCoursespi)
    {
        return assessCoursespiMapper.updateAssessCoursespi(assessCoursespi);
    }

    /**
     * 批量删除coursespi
     * 
     * @param ids 需要删除的coursespi主键
     * @return 结果
     */
    @Override
    public int deleteAssessCoursespiByIds(Long[] ids)
    {
        return assessCoursespiMapper.deleteAssessCoursespiByIds(ids);
    }

    /**
     * 删除coursespi信息
     * 
     * @param id coursespi主键
     * @return 结果
     */
    @Override
    public int deleteAssessCoursespiById(Long id)
    {
        return assessCoursespiMapper.deleteAssessCoursespiById(id);
    }
}
