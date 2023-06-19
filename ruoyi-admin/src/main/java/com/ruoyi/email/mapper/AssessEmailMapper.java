package com.ruoyi.email.mapper;

import java.util.List;
import com.ruoyi.email.domain.AssessEmail;

/**
 * emailMapper接口
 * 
 * @author ruoyi
 * @date 2023-05-03
 */
public interface AssessEmailMapper 
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
     * 删除email
     * 
     * @param id email主键
     * @return 结果
     */
    public int deleteAssessEmailById(Long id);

    /**
     * 批量删除email
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAssessEmailByIds(Long[] ids);
}
