package com.ruoyi.xm.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.arl.domain.ArlDelStio;
import com.ruoyi.xm.domain.XmXm;

/**
 * 新增项目Service接口
 * 
 * @author ruoyi
 * @date 2022-11-13
 */
public interface IXmXmService extends IService<XmXm>
{
    /**
     * 查询新增项目
     * 
     * @param id 新增项目主键
     * @return 新增项目
     */
    public XmXm selectXmXmById(Long id);

    /**
     * 查询新增项目列表
     * 
     * @param xmXm 新增项目
     * @return 新增项目集合
     */
    public List<XmXm> selectXmXmList(XmXm xmXm);

    /**
     * 新增新增项目
     * 
     * @param xmXm 新增项目
     * @return 结果
     */
    public int insertXmXm(XmXm xmXm);

    /**
     * 修改新增项目
     * 
     * @param xmXm 新增项目
     * @return 结果
     */
    public int updateXmXm(XmXm xmXm);

    /**
     * 批量删除新增项目
     * 
     * @param ids 需要删除的新增项目主键集合
     * @return 结果
     */
    public int deleteXmXmByIds(Long[] ids);

    /**
     * 删除新增项目信息
     * 
     * @param id 新增项目主键
     * @return 结果
     */
    public int deleteXmXmById(Long id);
}
