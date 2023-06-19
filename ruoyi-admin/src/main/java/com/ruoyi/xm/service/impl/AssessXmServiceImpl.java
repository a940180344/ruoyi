package com.ruoyi.xm.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.xm.mapper.AssessXmMapper;
import com.ruoyi.xm.domain.AssessXm;
import com.ruoyi.xm.service.IAssessXmService;

/**
 * xmService业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-13
 */
@Service
public class AssessXmServiceImpl implements IAssessXmService 
{
    @Autowired
    private AssessXmMapper assessXmMapper;

    /**
     * 查询xm
     * 
     * @param id xm主键
     * @return xm
     */
    @Override
    public AssessXm selectAssessXmById(Long id)
    {
        return assessXmMapper.selectAssessXmById(id);
    }

    /**
     * 查询xm列表
     * 
     * @param assessXm xm
     * @return xm
     */
    @Override
    public List<AssessXm> selectAssessXmList(AssessXm assessXm)
    {
        return assessXmMapper.selectAssessXmList(assessXm);
    }

    /**
     * 新增xm
     * 
     * @param assessXm xm
     * @return 结果
     */
    @Override
    public int insertAssessXm(AssessXm assessXm)
    {
        assessXm.setCreateTime(DateUtils.getNowDate());
        return assessXmMapper.insertAssessXm(assessXm);
    }

    /**
     * 修改xm
     * 
     * @param assessXm xm
     * @return 结果
     */
    @Override
    public int updateAssessXm(AssessXm assessXm)
    {
        return assessXmMapper.updateAssessXm(assessXm);
    }

    /**
     * 批量删除xm
     * 
     * @param ids 需要删除的xm主键
     * @return 结果
     */
    @Override
    public int deleteAssessXmByIds(Long[] ids)
    {
        return assessXmMapper.deleteAssessXmByIds(ids);
    }

    /**
     * 删除xm信息
     * 
     * @param id xm主键
     * @return 结果
     */
    @Override
    public int deleteAssessXmById(Long id)
    {
        return assessXmMapper.deleteAssessXmById(id);
    }
}
