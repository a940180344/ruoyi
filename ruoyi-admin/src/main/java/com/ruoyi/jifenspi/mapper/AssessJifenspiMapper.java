package com.ruoyi.jifenspi.mapper;

import java.util.List;
import com.ruoyi.jifenspi.domain.AssessJifenspi;

/**
 * jifenspiMapper接口
 * 
 * @author ruoyi
 * @date 2023-03-09
 */
public interface AssessJifenspiMapper 
{
    /**
     * 查询jifenspi
     * 
     * @param id jifenspi主键
     * @return jifenspi
     */
    public AssessJifenspi selectAssessJifenspiById(Long id);

    /**
     * 查询jifenspi列表
     * 
     * @param assessJifenspi jifenspi
     * @return jifenspi集合
     */
    public List<AssessJifenspi> selectAssessJifenspiList(AssessJifenspi assessJifenspi);

    /**
     * 新增jifenspi
     * 
     * @param assessJifenspi jifenspi
     * @return 结果
     */
    public int insertAssessJifenspi(AssessJifenspi assessJifenspi);

    /**
     * 修改jifenspi
     * 
     * @param assessJifenspi jifenspi
     * @return 结果
     */
    public int updateAssessJifenspi(AssessJifenspi assessJifenspi);

    /**
     * 删除jifenspi
     * 
     * @param id jifenspi主键
     * @return 结果
     */
    public int deleteAssessJifenspiById(Long id);

    /**
     * 批量删除jifenspi
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssessJifenspiByIds(Long[] ids);
}
