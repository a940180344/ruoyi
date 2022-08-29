package com.ruoyi.naxin.mapper;

import java.util.List;
import com.ruoyi.naxin.domain.StudioStu;

/**
 * 纳新Mapper接口
 * 
 * @author ruoyi
 * @date 2022-08-16
 */
public interface StudioStuMapper 
{
    /**
     * 查询纳新
     * 
     * @param dioId 纳新主键
     * @return 纳新
     */
    public StudioStu selectStudioStuByDioId(Long dioId);

    /**
     * 查询纳新列表
     * 
     * @param studioStu 纳新
     * @return 纳新集合
     */
    public List<StudioStu> selectStudioStuList(StudioStu studioStu);

    /**
     * 新增纳新
     * 
     * @param studioStu 纳新
     * @return 结果
     */
    public int insertStudioStu(StudioStu studioStu);

    /**
     * 修改纳新
     * 
     * @param studioStu 纳新
     * @return 结果
     */
    public int updateStudioStu(StudioStu studioStu);

    /**
     * 删除纳新
     * 
     * @param dioId 纳新主键
     * @return 结果
     */
    public int deleteStudioStuByDioId(Long dioId);

    /**
     * 批量删除纳新
     * 
     * @param dioIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteStudioStuByDioIds(Long[] dioIds);
}
