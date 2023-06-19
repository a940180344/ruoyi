package com.ruoyi.studio.wenjian.mapper;

import java.util.List;
import com.ruoyi.studio.wenjian.domain.AssessWenjian;

/**
 * wenjianMapper接口
 * 
 * @author ruoyi
 * @date 2023-03-09
 */
public interface AssessWenjianMapper 
{
    /**
     * 查询wenjian
     * 
     * @param id wenjian主键
     * @return wenjian
     */
    public AssessWenjian selectAssessWenjianById(Long id);

    /**
     * 查询wenjian列表
     * 
     * @param assessWenjian wenjian
     * @return wenjian集合
     */
    public List<AssessWenjian> selectAssessWenjianList(AssessWenjian assessWenjian);

    /**
     * 新增wenjian
     * 
     * @param assessWenjian wenjian
     * @return 结果
     */
    public int insertAssessWenjian(AssessWenjian assessWenjian);

    /**
     * 修改wenjian
     * 
     * @param assessWenjian wenjian
     * @return 结果
     */
    public int updateAssessWenjian(AssessWenjian assessWenjian);

    /**
     * 删除wenjian
     * 
     * @param id wenjian主键
     * @return 结果
     */
    public int deleteAssessWenjianById(Long id);

    /**
     * 批量删除wenjian
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssessWenjianByIds(Long[] ids);
}
