package com.ruoyi.studio.wenjian.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.studio.wenjian.mapper.AssessWenjianMapper;
import com.ruoyi.studio.wenjian.domain.AssessWenjian;
import com.ruoyi.studio.wenjian.service.IAssessWenjianService;

/**
 * wenjianService业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-09
 */
@Service
public class AssessWenjianServiceImpl implements IAssessWenjianService 
{
    @Autowired
    private AssessWenjianMapper assessWenjianMapper;

    /**
     * 查询wenjian
     * 
     * @param id wenjian主键
     * @return wenjian
     */
    @Override
    public AssessWenjian selectAssessWenjianById(Long id)
    {
        return assessWenjianMapper.selectAssessWenjianById(id);
    }

    /**
     * 查询wenjian列表
     * 
     * @param assessWenjian wenjian
     * @return wenjian
     */
    @Override
    public List<AssessWenjian> selectAssessWenjianList(AssessWenjian assessWenjian)
    {
        return assessWenjianMapper.selectAssessWenjianList(assessWenjian);
    }

    /**
     * 新增wenjian
     * 
     * @param assessWenjian wenjian
     * @return 结果
     */
    @Override
    public int insertAssessWenjian(AssessWenjian assessWenjian)
    {
        assessWenjian.setCreateTime(DateUtils.getNowDate());
        return assessWenjianMapper.insertAssessWenjian(assessWenjian);
    }

    /**
     * 修改wenjian
     * 
     * @param assessWenjian wenjian
     * @return 结果
     */
    @Override
    public int updateAssessWenjian(AssessWenjian assessWenjian)
    {
        return assessWenjianMapper.updateAssessWenjian(assessWenjian);
    }

    /**
     * 批量删除wenjian
     * 
     * @param ids 需要删除的wenjian主键
     * @return 结果
     */
    @Override
    public int deleteAssessWenjianByIds(Long[] ids)
    {
        return assessWenjianMapper.deleteAssessWenjianByIds(ids);
    }

    /**
     * 删除wenjian信息
     * 
     * @param id wenjian主键
     * @return 结果
     */
    @Override
    public int deleteAssessWenjianById(Long id)
    {
        return assessWenjianMapper.deleteAssessWenjianById(id);
    }
}
