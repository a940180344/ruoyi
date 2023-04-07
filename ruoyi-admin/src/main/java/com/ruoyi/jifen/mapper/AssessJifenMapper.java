package com.ruoyi.jifen.mapper;

import java.util.List;
import com.ruoyi.jifen.domain.AssessJifen;

/**
 * jifenMapper接口
 * 
 * @author ruoyi
 * @date 2023-03-08
 */
public interface AssessJifenMapper 
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
     * 删除jifen
     * 
     * @param id jifen主键
     * @return 结果
     */
    public int deleteAssessJifenById(Long id);

    /**
     * 批量删除jifen
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssessJifenByIds(Long[] ids);
}
