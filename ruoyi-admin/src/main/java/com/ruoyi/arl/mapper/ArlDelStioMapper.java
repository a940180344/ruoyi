package com.ruoyi.arl.mapper;

import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ruoyi.arl.domain.ArlDelStio;
import com.ruoyi.arl.domain.ArlNaxin;

/**
 * delStioMapper接口
 * 
 * @author ruoyi
 * @date 2022-11-02
 */

public interface ArlDelStioMapper extends BaseMapper<ArlDelStio>
{
    /**
     * 查询delStio
     * 
     * @param id delStio主键
     * @return delStio
     */
    public ArlDelStio selectArlDelStioById(Long id);

    /**
     * 查询delStio列表
     * 
     * @param arlDelStio delStio
     * @return delStio集合
     */
    public List<ArlDelStio> selectArlDelStioList(ArlDelStio arlDelStio);

    /**
     * 新增delStio
     * 
     * @param arlDelStio delStio
     * @return 结果
     */
    public int insertArlDelStio(ArlDelStio arlDelStio);

    /**
     * 修改delStio
     * 
     * @param arlDelStio delStio
     * @return 结果
     */
    public int updateArlDelStio(ArlDelStio arlDelStio);

    /**
     * 删除delStio
     * 
     * @param id delStio主键
     * @return 结果
     */
    public int deleteArlDelStioById(Long id);

    /**
     * 批量删除delStio
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteArlDelStioByIds(Long[] ids);
}
