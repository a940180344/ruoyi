package com.ruoyi.arl.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.arl.domain.ArlHost;
import com.ruoyi.arl.mapper.ArlHostMapper;
import com.ruoyi.arl.service.IArlHostService;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.arl.mapper.ArlNaxinMapper;
import com.ruoyi.arl.domain.ArlNaxin;
import com.ruoyi.arl.service.IArlNaxinService;

/**
 * naxinService业务层处理
 * 
 * @author ruoyi
 * @date 2022-11-02
 */
@Service
public class ArlNaxinServiceImpl extends ServiceImpl<ArlNaxinMapper, ArlNaxin> implements IArlNaxinService
{
    @Autowired
    private ArlNaxinMapper arlNaxinMapper;

    /**
     * 查询naxin
     * 
     * @param id naxin主键
     * @return naxin
     */
    @Override
    public ArlNaxin selectArlNaxinById(Long id)
    {
        return arlNaxinMapper.selectArlNaxinById(id);
    }

    /**
     * 查询naxin列表
     * 
     * @param arlNaxin naxin
     * @return naxin
     */
    @Override
    public List<ArlNaxin> selectArlNaxinList(ArlNaxin arlNaxin)
    {
        return arlNaxinMapper.selectArlNaxinList(arlNaxin);
    }

    /**
     * 新增naxin
     * 
     * @param arlNaxin naxin
     * @return 结果
     */
    @Override
    public int insertArlNaxin(ArlNaxin arlNaxin)
    {
        arlNaxin.setCreateTime(DateUtils.getNowDate());
        return arlNaxinMapper.insertArlNaxin(arlNaxin);
    }

    /**
     * 修改naxin
     * 
     * @param arlNaxin naxin
     * @return 结果
     */
    @Override
    public int updateArlNaxin(ArlNaxin arlNaxin)
    {
        return arlNaxinMapper.updateArlNaxin(arlNaxin);
    }

    /**
     * 批量删除naxin
     * 
     * @param ids 需要删除的naxin主键
     * @return 结果
     */
    @Override
    public int deleteArlNaxinByIds(Long[] ids)
    {
        return arlNaxinMapper.deleteArlNaxinByIds(ids);
    }

    /**
     * 删除naxin信息
     * 
     * @param id naxin主键
     * @return 结果
     */
    @Override
    public int deleteArlNaxinById(Long id)
    {
        return arlNaxinMapper.deleteArlNaxinById(id);
    }
}
