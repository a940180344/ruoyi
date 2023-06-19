package com.ruoyi.email.service;

import java.util.List;
import com.ruoyi.email.domain.AssessEmail;

/**
 * emailService接口
 * 
 * @author ruoyi
 * @date 2023-05-03
 */
public interface IAssessEmailService 
{
    /**
     * 查询email
     * 
     * @param id email主键
     * @return email
     */
    public AssessEmail selectAssessEmailById(Long id);

    /**
     * 查询email列表
     * 
     * @param assessEmail email
     * @return email集合
     */
    public List<AssessEmail> selectAssessEmailList(AssessEmail assessEmail);

    /**
     * 新增email
     * 
     * @param assessEmail email
     * @return 结果
     */
    public int insertAssessEmail(AssessEmail assessEmail);

    /**
     * 修改email
     * 
     * @param assessEmail email
     * @return 结果
     */
    public int updateAssessEmail(AssessEmail assessEmail);

    /**
     * 批量删除email
     * 
     * @param ids 需要删除的email主键集合
     * @return 结果
     */
    public int deleteAssessEmailByIds(Long[] ids);

    /**
     * 删除email信息
     * 
     * @param id email主键
     * @return 结果
     */
    public int deleteAssessEmailById(Long id);
}
