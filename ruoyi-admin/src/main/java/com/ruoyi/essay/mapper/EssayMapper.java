package com.ruoyi.essay.mapper;

import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ruoyi.arl.domain.ArlHost;
import com.ruoyi.essay.domain.Essay;

/**
 * 发布文章Mapper接口
 * 
 * @author ruoyi
 * @date 2022-11-24
 */
public interface EssayMapper extends BaseMapper<Essay>
{
    /**
     * 查询发布文章
     * 
     * @param essayId 发布文章主键
     * @return 发布文章
     */
    public Essay selectEssayByEssayId(Long essayId);

    /**
     * 查询发布文章列表
     * 
     * @param essay 发布文章
     * @return 发布文章集合
     */
    public List<Essay> selectEssayList(Essay essay);

    /**
     * 新增发布文章
     * 
     * @param essay 发布文章
     * @return 结果
     */
    public int insertEssay(Essay essay);

    /**
     * 修改发布文章
     * 
     * @param essay 发布文章
     * @return 结果
     */
    public int updateEssay(Essay essay);

    /**
     * 删除发布文章
     * 
     * @param essayId 发布文章主键
     * @return 结果
     */
    public int deleteEssayByEssayId(Long essayId);

    /**
     * 批量删除发布文章
     * 
     * @param essayIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteEssayByEssayIds(Long[] essayIds);
}
