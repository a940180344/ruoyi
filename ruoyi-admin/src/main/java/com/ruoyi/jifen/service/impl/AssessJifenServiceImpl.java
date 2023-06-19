package com.ruoyi.jifen.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.jifen.mapper.AssessJifenMapper;
import com.ruoyi.jifen.domain.AssessJifen;
import com.ruoyi.jifen.service.IAssessJifenService;

/**
 * jifenService业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-08
 */
@Service
public class AssessJifenServiceImpl implements IAssessJifenService 
{
    @Autowired
    private AssessJifenMapper assessJifenMapper;

    /**
     * 查询jifen
     * 
     * @param id jifen主键
     * @return jifen
     */
    @Override
    public AssessJifen selectAssessJifenById(Long id)
    {
        return assessJifenMapper.selectAssessJifenById(id);
    }

    /**
     * 查询jifen列表
     * 
     * @param assessJifen jifen
     * @return jifen
     */
    @Override
    public List<AssessJifen> selectAssessJifenList(AssessJifen assessJifen)
    {
        return assessJifenMapper.selectAssessJifenList(assessJifen);
    }

    /**
     * 新增jifen
     * 
     * @param assessJifen jifen
     * @return 结果
     */
    @Override
    public int insertAssessJifen(AssessJifen assessJifen)
    {
        assessJifen.setCreateTime(DateUtils.getNowDate());
        return assessJifenMapper.insertAssessJifen(assessJifen);
    }

    /**
     * 修改jifen
     * 
     * @param assessJifen jifen
     * @return 结果
     */
    @Override
    public int updateAssessJifen(AssessJifen assessJifen)
    {
        return assessJifenMapper.updateAssessJifen(assessJifen);
    }

    /**
     * 批量删除jifen
     * 
     * @param ids 需要删除的jifen主键
     * @return 结果
     */
    @Override
    public int deleteAssessJifenByIds(Long[] ids)
    {
        return assessJifenMapper.deleteAssessJifenByIds(ids);
    }

    /**
     * 删除jifen信息
     * 
     * @param id jifen主键
     * @return 结果
     */
    @Override
    public int deleteAssessJifenById(Long id)
    {
        return assessJifenMapper.deleteAssessJifenById(id);
    }
}
