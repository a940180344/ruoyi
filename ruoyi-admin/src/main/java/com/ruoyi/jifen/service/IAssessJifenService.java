package com.ruoyi.jifen.service;

import java.util.List;
import com.ruoyi.jifen.domain.AssessJifen;

/**
 * jifenService接口
 * 
 * @author ruoyi
 * @date 2023-03-08
 */
public interface IAssessJifenService 
{
    /**
     * 查询jifen
     * 
     * @param id jifen主键
     * @return jifen
     */
    public AssessJifen selectAssessJifenById(Long id);

    /**
     * 查询jifen列表
     * 
     * @param assessJifen jifen
     * @return jifen集合
     */
    public List<AssessJifen> selectAssessJifenList(AssessJifen assessJifen);

    /**
     * 新增jifen
     * 
     * @param assessJifen jifen
     * @return 结果
     */
    public int insertAssessJifen(AssessJifen assessJifen);

    /**
     * 修改jifen
     * 
     * @param assessJifen jifen
     * @return 结果
     */
    public int updateAssessJifen(AssessJifen assessJifen);

    /**
     * 批量删除jifen
     * 
     * @param ids 需要删除的jifen主键集合
     * @return 结果
     */
    public int deleteAssessJifenByIds(Long[] ids);

    /**
     * 删除jifen信息
     * 
     * @param id jifen主键
     * @return 结果
     */
    public int deleteAssessJifenById(Long id);
}
