package com.ruoyi.naxin.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.naxin.mapper.StudioStuMapper;
import com.ruoyi.naxin.domain.StudioStu;
import com.ruoyi.naxin.service.IStudioStuService;

/**
 * 纳新Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-08-16
 */
@Service
public class StudioStuServiceImpl implements IStudioStuService 
{
    @Autowired
    private StudioStuMapper studioStuMapper;

    /**
     * 查询纳新
     * 
     * @param dioId 纳新主键
     * @return 纳新
     */
    @Override
    public StudioStu selectStudioStuByDioId(Long dioId)
    {
        return studioStuMapper.selectStudioStuByDioId(dioId);
    }

    /**
     * 查询纳新列表
     * 
     * @param studioStu 纳新
     * @return 纳新
     */
    @Override
    public List<StudioStu> selectStudioStuList(StudioStu studioStu)
    {
        return studioStuMapper.selectStudioStuList(studioStu);
    }

    /**
     * 新增纳新
     * 
     * @param studioStu 纳新
     * @return 结果
     */
    @Override
    public int insertStudioStu(StudioStu studioStu)
    {
        return studioStuMapper.insertStudioStu(studioStu);
    }

    /**
     * 修改纳新
     * 
     * @param studioStu 纳新
     * @return 结果
     */
    @Override
    public int updateStudioStu(StudioStu studioStu)
    {
        return studioStuMapper.updateStudioStu(studioStu);
    }

    /**
     * 批量删除纳新
     * 
     * @param dioIds 需要删除的纳新主键
     * @return 结果
     */
    @Override
    public int deleteStudioStuByDioIds(Long[] dioIds)
    {
        return studioStuMapper.deleteStudioStuByDioIds(dioIds);
    }

    /**
     * 删除纳新信息
     * 
     * @param dioId 纳新主键
     * @return 结果
     */
    @Override
    public int deleteStudioStuByDioId(Long dioId)
    {
        return studioStuMapper.deleteStudioStuByDioId(dioId);
    }
}
