package com.ruoyi.dept.service;

import java.util.List;
import com.ruoyi.dept.domain.SysDep;

/**
 * 部门Service接口
 * 
 * @author ruoyi
 * @date 2022-08-15
 */
public interface ISysDepService
{
    /**
     * 查询部门
     * 
     * @param deptId 部门主键
     * @return 部门
     */
    public SysDep selectSysDeptByDeptId(Long deptId);

    /**
     * 查询部门列表
     * 
     * @param sysDep 部门
     * @return 部门集合
     */
    public List<SysDep> selectSysDeptList(SysDep sysDep);

    /**
     * 新增部门
     * 
     * @param sysDep 部门
     * @return 结果
     */
    public int insertSysDept(SysDep sysDep);

    /**
     * 修改部门
     * 
     * @param sysDep 部门
     * @return 结果
     */
    public int updateSysDept(SysDep sysDep);

    /**
     * 批量删除部门
     * 
     * @param deptIds 需要删除的部门主键集合
     * @return 结果
     */
    public int deleteSysDeptByDeptIds(Long[] deptIds);

    /**
     * 删除部门信息
     * 
     * @param deptId 部门主键
     * @return 结果
     */
    public int deleteSysDeptByDeptId(Long deptId);
}
