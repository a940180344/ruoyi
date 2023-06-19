package com.ruoyi.jifenspi.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.jifenspi.mapper.AssessJifenspiMapper;
import com.ruoyi.jifenspi.domain.AssessJifenspi;
import com.ruoyi.jifenspi.service.IAssessJifenspiService;

/**
 * jifenspiService业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-09
 */
@Service
public class AssessJifenspiServiceImpl implements IAssessJifenspiService 
{
    @Autowired
    private AssessJifenspiMapper assessJifenspiMapper;

    /**
     * 查询jifenspi
     * 
     * @param id jifenspi主键
     * @return jifenspi
     */
    @Override
    public AssessJifenspi selectAssessJifenspiById(Long id)
    {
        return assessJifenspiMapper.selectAssessJifenspiById(id);
    }

    /**
     * 查询jifenspi列表
     * 
     * @param assessJifenspi jifenspi
     * @return jifenspi
     */
    @Override
    public List<AssessJifenspi> selectAssessJifenspiList(AssessJifenspi assessJifenspi)
    {
        return assessJifenspiMapper.selectAssessJifenspiList(assessJifenspi);
    }

    /**
     * 新增jifenspi
     * 
     * @param assessJifenspi jifenspi
     * @return 结果
     */
    @Override
    public int insertAssessJifenspi(AssessJifenspi assessJifenspi)
    {
        assessJifenspi.setCreateTime(DateUtils.getNowDate());
        return assessJifenspiMapper.insertAssessJifenspi(assessJifenspi);
    }

    /**
     * 修改jifenspi
     * 
     * @param assessJifenspi jifenspi
     * @return 结果
     */
    @Override
    public int updateAssessJifenspi(AssessJifenspi assessJifenspi)
    {
        return assessJifenspiMapper.updateAssessJifenspi(assessJifenspi);
    }

    /**
     * 批量删除jifenspi
     * 
     * @param ids 需要删除的jifenspi主键
     * @return 结果
     */
    @Override
    public int deleteAssessJifenspiByIds(Long[] ids)
    {
        return assessJifenspiMapper.deleteAssessJifenspiByIds(ids);
    }

    /**
     * 删除jifenspi信息
     * 
     * @param id jifenspi主键
     * @return 结果
     */
    @Override
    public int deleteAssessJifenspiById(Long id)
    {
        return assessJifenspiMapper.deleteAssessJifenspiById(id);
    }
}
