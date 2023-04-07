package com.ruoyi.xm.service;

import java.util.List;
import com.ruoyi.xm.domain.AssessXm;

/**
 * xmService接口
 * 
 * @author ruoyi
 * @date 2023-03-13
 */
public interface IAssessXmService 
{
    /**
     * 查询xm
     * 
     * @param id xm主键
     * @return xm
     */
    public AssessXm selectAssessXmById(Long id);

    /**
     * 查询xm列表
     * 
     * @param assessXm xm
     * @return xm集合
     */
    public List<AssessXm> selectAssessXmList(AssessXm assessXm);

    /**
     * 新增xm
     * 
     * @param assessXm xm
     * @return 结果
     */
    public int insertAssessXm(AssessXm assessXm);

    /**
     * 修改xm
     * 
     * @param assessXm xm
     * @return 结果
     */
    public int updateAssessXm(AssessXm assessXm);

    /**
     * 批量删除xm
     * 
     * @param ids 需要删除的xm主键集合
     * @return 结果
     */
    public int deleteAssessXmByIds(Long[] ids);

    /**
     * 删除xm信息
     * 
     * @param id xm主键
     * @return 结果
     */
    public int deleteAssessXmById(Long id);
}
