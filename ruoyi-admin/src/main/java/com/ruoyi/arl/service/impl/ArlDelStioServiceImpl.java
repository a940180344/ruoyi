package com.ruoyi.arl.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.arl.domain.ArlNaxin;
import com.ruoyi.arl.mapper.ArlNaxinMapper;
import com.ruoyi.arl.service.IArlNaxinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.arl.mapper.ArlDelStioMapper;
import com.ruoyi.arl.domain.ArlDelStio;
import com.ruoyi.arl.service.IArlDelStioService;

/**
 * delStioService业务层处理
 * 
 * @author ruoyi
 * @date 2022-11-02
 */
@Service
public class ArlDelStioServiceImpl extends ServiceImpl<ArlDelStioMapper, ArlDelStio> implements IArlDelStioService
{
    @Autowired
    private ArlDelStioMapper arlDelStioMapper;

    /**
     * 查询delStio
     * 
     * @param id delStio主键
     * @return delStio
     */
    @Override
    public ArlDelStio selectArlDelStioById(Long id)
    {
        return arlDelStioMapper.selectArlDelStioById(id);
    }

    /**
     * 查询delStio列表
     * 
     * @param arlDelStio delStio
     * @return delStio
     */
    @Override
    public List<ArlDelStio> selectArlDelStioList(ArlDelStio arlDelStio)
    {
        return arlDelStioMapper.selectArlDelStioList(arlDelStio);
    }

    /**
     * 新增delStio
     * 
     * @param arlDelStio delStio
     * @return 结果
     */
    @Override
    public int insertArlDelStio(ArlDelStio arlDelStio)
    {
        return arlDelStioMapper.insertArlDelStio(arlDelStio);
    }

    /**
     * 修改delStio
     * 
     * @param arlDelStio delStio
     * @return 结果
     */
    @Override
    public int updateArlDelStio(ArlDelStio arlDelStio)
    {
        return arlDelStioMapper.updateArlDelStio(arlDelStio);
    }

    /**
     * 批量删除delStio
     * 
     * @param ids 需要删除的delStio主键
     * @return 结果
     */
    @Override
    public int deleteArlDelStioByIds(Long[] ids)
    {
        return arlDelStioMapper.deleteArlDelStioByIds(ids);
    }

    /**
     * 删除delStio信息
     * 
     * @param id delStio主键
     * @return 结果
     */
    @Override
    public int deleteArlDelStioById(Long id)
    {
        return arlDelStioMapper.deleteArlDelStioById(id);
    }
}
