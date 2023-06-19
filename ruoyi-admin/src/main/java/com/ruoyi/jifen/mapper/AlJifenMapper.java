package com.ruoyi.jifen.mapper;

import java.util.List;
import com.ruoyi.jifen.domain.AlJifen;

/**
 * jifenMapper接口
 * 
 * @author ruoyi
 * @date 2023-05-03
 */
public interface AlJifenMapper 
{
    /**
     * 查询jifen
     * 
     * @param id jifen主键
     * @return jifen
     */
    public AlJifen selectAlJifenById(Long id);

    /**
     * 查询jifen列表
     * 
     * @param alJifen jifen
     * @return jifen集合
     */
    public List<AlJifen> selectAlJifenList(AlJifen alJifen);

    /**
     * 新增jifen
     * 
     * @param alJifen jifen
     * @return 结果
     */
    public int insertAlJifen(AlJifen alJifen);

    /**
     * 修改jifen
     * 
     * @param alJifen jifen
     * @return 结果
     */
    public int updateAlJifen(AlJifen alJifen);

    /**
     * 删除jifen
     * 
     * @param id jifen主键
     * @return 结果
     */
    public int deleteAlJifenById(Long id);

    /**
     * 批量删除jifen
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAlJifenByIds(Long[] ids);
}
