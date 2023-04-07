package com.ruoyi.email.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.email.mapper.AssessEmailMapper;
import com.ruoyi.email.domain.AssessEmail;
import com.ruoyi.email.service.IAssessEmailService;

/**
 * emailService业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-13
 */
@Service
public class AssessEmailServiceImpl implements IAssessEmailService 
{
    @Autowired
    private AssessEmailMapper assessEmailMapper;

    /**
     * 查询email
     * 
     * @param id email主键
     * @return email
     */
    @Override
    public AssessEmail selectAssessEmailById(Long id)
    {
        return assessEmailMapper.selectAssessEmailById(id);
    }

    /**
     * 查询email列表
     * 
     * @param assessEmail email
     * @return email
     */
    @Override
    public List<AssessEmail> selectAssessEmailList(AssessEmail assessEmail)
    {
        return assessEmailMapper.selectAssessEmailList(assessEmail);
    }

    /**
     * 新增email
     * 
     * @param assessEmail email
     * @return 结果
     */
    @Override
    public int insertAssessEmail(AssessEmail assessEmail)
    {
        assessEmail.setCreateTime(DateUtils.getNowDate());
        return assessEmailMapper.insertAssessEmail(assessEmail);
    }

    /**
     * 修改email
     * 
     * @param assessEmail email
     * @return 结果
     */
    @Override
    public int updateAssessEmail(AssessEmail assessEmail)
    {
        return assessEmailMapper.updateAssessEmail(assessEmail);
    }

    /**
     * 批量删除email
     * 
     * @param ids 需要删除的email主键
     * @return 结果
     */
    @Override
    public int deleteAssessEmailByIds(Long[] ids)
    {
        return assessEmailMapper.deleteAssessEmailByIds(ids);
    }

    /**
     * 删除email信息
     * 
     * @param id email主键
     * @return 结果
     */
    @Override
    public int deleteAssessEmailById(Long id)
    {
        return assessEmailMapper.deleteAssessEmailById(id);
    }
}
