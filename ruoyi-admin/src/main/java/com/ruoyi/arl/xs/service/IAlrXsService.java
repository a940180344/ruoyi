package com.ruoyi.arl.xs.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.arl.domain.ArlHost;
import com.ruoyi.arl.xs.domain.AlrXs;

/**
 * 协商Service接口
 * 
 * @author ruoyi
 * @date 2022-10-13
 */
public interface IAlrXsService extends IService<AlrXs>
{
    /**
     * 查询协商
     * 
     * @param xsId 协商主键
     * @return 协商
     */
    public AlrXs selectAlrXsByXsId(Long xsId);

    /**
     * 查询协商列表
     * 
     * @param alrXs 协商
     * @return 协商集合
     */
    public List<AlrXs> selectAlrXsList(AlrXs alrXs);

    /**
     * 新增协商
     * 
     * @param alrXs 协商
     * @return 结果
     */
    public int insertAlrXs(AlrXs alrXs);

    /**
     * 修改协商
     * 
     * @param alrXs 协商
     * @return 结果
     */
    public int updateAlrXs(AlrXs alrXs);

    /**
     * 批量删除协商
     * 
     * @param xsIds 需要删除的协商主键集合
     * @return 结果
     */
    public int deleteAlrXsByXsIds(Long[] xsIds);

    /**
     * 删除协商信息
     * 
     * @param xsId 协商主键
     * @return 结果
     */
    public int deleteAlrXsByXsId(Long xsId);
}
