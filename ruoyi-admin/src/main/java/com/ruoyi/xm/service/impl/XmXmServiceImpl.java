package com.ruoyi.xm.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.arl.domain.ArlDelStio;
import com.ruoyi.arl.mapper.ArlDelStioMapper;
import com.ruoyi.arl.service.IArlDelStioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.xm.mapper.XmXmMapper;
import com.ruoyi.xm.domain.XmXm;
import com.ruoyi.xm.service.IXmXmService;

/**
 * 新增项目Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-11-13
 */
@Service
public class XmXmServiceImpl extends ServiceImpl<XmXmMapper, XmXm> implements IXmXmService
{
    @Autowired
    private XmXmMapper xmXmMapper;

    /**
     * 查询新增项目
     * 
     * @param id 新增项目主键
     * @return 新增项目
     */
    @Override
    public XmXm selectXmXmById(Long id)
    {
        return xmXmMapper.selectXmXmById(id);
    }

    /**
     * 查询新增项目列表
     * 
     * @param xmXm 新增项目
     * @return 新增项目
     */
    @Override
    public List<XmXm> selectXmXmList(XmXm xmXm)
    {
        return xmXmMapper.selectXmXmList(xmXm);
    }

    /**
     * 新增新增项目
     * 
     * @param xmXm 新增项目
     * @return 结果
     */
    @Override
    public int insertXmXm(XmXm xmXm)
    {
        return xmXmMapper.insertXmXm(xmXm);
    }

    /**
     * 修改新增项目
     * 
     * @param xmXm 新增项目
     * @return 结果
     */
    @Override
    public int updateXmXm(XmXm xmXm)
    {
        return xmXmMapper.updateXmXm(xmXm);
    }

    /**
     * 批量删除新增项目
     * 
     * @param ids 需要删除的新增项目主键
     * @return 结果
     */
    @Override
    public int deleteXmXmByIds(Long[] ids)
    {
        return xmXmMapper.deleteXmXmByIds(ids);
    }

    /**
     * 删除新增项目信息
     * 
     * @param id 新增项目主键
     * @return 结果
     */
    @Override
    public int deleteXmXmById(Long id)
    {
        return xmXmMapper.deleteXmXmById(id);
    }
}
