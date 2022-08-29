package com.ruoyi.naxin.service;

import java.util.List;
import com.ruoyi.naxin.domain.StudioStu;

/**
 * 纳新Service接口
 * 
 * @author ruoyi
 * @date 2022-08-16
 */
public interface IStudioStuService 
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
     * 批量删除纳新
     * 
     * @param dioIds 需要删除的纳新主键集合
     * @return 结果
     */
    public int deleteStudioStuByDioIds(Long[] dioIds);

    /**
     * 删除纳新信息
     * 
     * @param dioId 纳新主键
     * @return 结果
     */
    public int deleteStudioStuByDioId(Long dioId);
}
