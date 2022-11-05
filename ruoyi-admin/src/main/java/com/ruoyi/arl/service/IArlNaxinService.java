package com.ruoyi.arl.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.arl.domain.ArlHost;
import com.ruoyi.arl.domain.ArlNaxin;

/**
 * naxinService接口
 * 
 * @author ruoyi
 * @date 2022-11-02
 */
public interface IArlNaxinService extends IService<ArlNaxin>
{
    /**
     * 查询naxin
     * 
     * @param id naxin主键
     * @return naxin
     */
    public ArlNaxin selectArlNaxinById(Long id);

    /**
     * 查询naxin列表
     * 
     * @param arlNaxin naxin
     * @return naxin集合
     */
    public List<ArlNaxin> selectArlNaxinList(ArlNaxin arlNaxin);

    /**
     * 新增naxin
     * 
     * @param arlNaxin naxin
     * @return 结果
     */
    public int insertArlNaxin(ArlNaxin arlNaxin);

    /**
     * 修改naxin
     * 
     * @param arlNaxin naxin
     * @return 结果
     */
    public int updateArlNaxin(ArlNaxin arlNaxin);

    /**
     * 批量删除naxin
     * 
     * @param ids 需要删除的naxin主键集合
     * @return 结果
     */
    public int deleteArlNaxinByIds(Long[] ids);

    /**
     * 删除naxin信息
     * 
     * @param id naxin主键
     * @return 结果
     */
    public int deleteArlNaxinById(Long id);
}
