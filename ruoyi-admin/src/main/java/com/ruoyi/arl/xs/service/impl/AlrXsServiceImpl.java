package com.ruoyi.arl.xs.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.arl.domain.ArlHost;
import com.ruoyi.arl.mapper.ArlHostMapper;
import com.ruoyi.arl.service.IArlHostService;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.arl.xs.mapper.AlrXsMapper;
import com.ruoyi.arl.xs.domain.AlrXs;
import com.ruoyi.arl.xs.service.IAlrXsService;

/**
 * 协商Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-10-13
 */
@Service
public class AlrXsServiceImpl  extends ServiceImpl<AlrXsMapper, AlrXs> implements IAlrXsService
{
    @Autowired
    private AlrXsMapper alrXsMapper;

    /**
     * 查询协商
     * 
     * @param xsId 协商主键
     * @return 协商
     */
    @Override
    public AlrXs selectAlrXsByXsId(Long xsId)
    {
        return alrXsMapper.selectAlrXsByXsId(xsId);
    }

    /**
     * 查询协商列表
     * 
     * @param alrXs 协商
     * @return 协商
     */
    @Override
    public List<AlrXs> selectAlrXsList(AlrXs alrXs)
    {
        return alrXsMapper.selectAlrXsList(alrXs);
    }

    /**
     * 新增协商
     * 
     * @param alrXs 协商
     * @return 结果
     */
    @Override
    public int insertAlrXs(AlrXs alrXs)
    {
        alrXs.setCreateTime(DateUtils.getNowDate());
        return alrXsMapper.insertAlrXs(alrXs);
    }

    /**
     * 修改协商
     * 
     * @param alrXs 协商
     * @return 结果
     */
    @Override
    public int updateAlrXs(AlrXs alrXs)
    {
        return alrXsMapper.updateAlrXs(alrXs);
    }

    /**
     * 批量删除协商
     * 
     * @param xsIds 需要删除的协商主键
     * @return 结果
     */
    @Override
    public int deleteAlrXsByXsIds(Long[] xsIds)
    {
        return alrXsMapper.deleteAlrXsByXsIds(xsIds);
    }

    /**
     * 删除协商信息
     * 
     * @param xsId 协商主键
     * @return 结果
     */
    @Override
    public int deleteAlrXsByXsId(Long xsId)
    {
        return alrXsMapper.deleteAlrXsByXsId(xsId);
    }
}
