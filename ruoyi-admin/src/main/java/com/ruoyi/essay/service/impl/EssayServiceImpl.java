package com.ruoyi.essay.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.arl.domain.ArlDelStio;
import com.ruoyi.arl.mapper.ArlDelStioMapper;
import com.ruoyi.arl.service.IArlDelStioService;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.essay.mapper.EssayMapper;
import com.ruoyi.essay.domain.Essay;
import com.ruoyi.essay.service.IEssayService;

/**
 * 发布文章Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-11-24
 */
@Service
public class EssayServiceImpl extends ServiceImpl<EssayMapper, Essay> implements IEssayService
{
    @Autowired
    private EssayMapper essayMapper;

    /**
     * 查询发布文章
     * 
     * @param essayId 发布文章主键
     * @return 发布文章
     */
    @Override
    public Essay selectEssayByEssayId(Long essayId)
    {
        return essayMapper.selectEssayByEssayId(essayId);
    }

    /**
     * 查询发布文章列表
     * 
     * @param essay 发布文章
     * @return 发布文章
     */
    @Override
    public List<Essay> selectEssayList(Essay essay)
    {
        return essayMapper.selectEssayList(essay);
    }

    /**
     * 新增发布文章
     * 
     * @param essay 发布文章
     * @return 结果
     */
    @Override
    public int insertEssay(Essay essay)
    {
        essay.setCreateTime(DateUtils.getNowDate());
        return essayMapper.insertEssay(essay);
    }

    /**
     * 修改发布文章
     * 
     * @param essay 发布文章
     * @return 结果
     */
    @Override
    public int updateEssay(Essay essay)
    {
        return essayMapper.updateEssay(essay);
    }

    /**
     * 批量删除发布文章
     * 
     * @param essayIds 需要删除的发布文章主键
     * @return 结果
     */
    @Override
    public int deleteEssayByEssayIds(Long[] essayIds)
    {
        return essayMapper.deleteEssayByEssayIds(essayIds);
    }

    /**
     * 删除发布文章信息
     * 
     * @param essayId 发布文章主键
     * @return 结果
     */
    @Override
    public int deleteEssayByEssayId(Long essayId)
    {
        return essayMapper.deleteEssayByEssayId(essayId);
    }
}
