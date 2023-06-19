package com.ruoyi.jifen.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.jifen.mapper.AlJifenMapper;
import com.ruoyi.jifen.domain.AlJifen;
import com.ruoyi.jifen.service.IAlJifenService;

/**
 * jifenService业务层处理
 * 
 * @author ruoyi
 * @date 2023-05-03
 */
@Service
public class AlJifenServiceImpl implements IAlJifenService 
{
    @Autowired
    private AlJifenMapper alJifenMapper;

    /**
     * 查询jifen
     * 
     * @param id jifen主键
     * @return jifen
     */
    @Override
    public AlJifen selectAlJifenById(Long id)
    {
        return alJifenMapper.selectAlJifenById(id);
    }

    /**
     * 查询jifen列表
     * 
     * @param alJifen jifen
     * @return jifen
     */
    @Override
    public List<AlJifen> selectAlJifenList(AlJifen alJifen)
    {
        return alJifenMapper.selectAlJifenList(alJifen);
    }

    /**
     * 新增jifen
     * 
     * @param alJifen jifen
     * @return 结果
     */
    @Override
    public int insertAlJifen(AlJifen alJifen)
    {
        alJifen.setCreateTime(DateUtils.getNowDate());
        return alJifenMapper.insertAlJifen(alJifen);
    }

    /**
     * 修改jifen
     * 
     * @param alJifen jifen
     * @return 结果
     */
    @Override
    public int updateAlJifen(AlJifen alJifen)
    {
        return alJifenMapper.updateAlJifen(alJifen);
    }

    /**
     * 批量删除jifen
     * 
     * @param ids 需要删除的jifen主键
     * @return 结果
     */
    @Override
    public int deleteAlJifenByIds(Long[] ids)
    {
        return alJifenMapper.deleteAlJifenByIds(ids);
    }

    /**
     * 删除jifen信息
     * 
     * @param id jifen主键
     * @return 结果
     */
    @Override
    public int deleteAlJifenById(Long id)
    {
        return alJifenMapper.deleteAlJifenById(id);
    }
}
