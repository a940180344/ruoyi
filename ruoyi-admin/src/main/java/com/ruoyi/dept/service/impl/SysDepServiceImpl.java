package com.ruoyi.dept.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.dept.mapper.SysDepMapper;
import com.ruoyi.dept.domain.SysDep;
import com.ruoyi.dept.service.ISysDepService;

/**
 * 部门Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-08-15
 */
@Service
public class SysDepServiceImpl implements ISysDepService
{
    @Autowired
    private SysDepMapper sysDepMapper;

    /**
     * 查询部门
     * 
     * @param deptId 部门主键
     * @return 部门
     */
    @Override
    public SysDep selectSysDeptByDeptId(Long deptId)
    {
        return sysDepMapper.selectSysDeptByDeptId(deptId);
    }

    /**
     * 查询部门列表
     * 
     * @param sysDep 部门
     * @return 部门
     */
    @Override
    public List<SysDep> selectSysDeptList(SysDep sysDep)
    {
        return sysDepMapper.selectSysDeptList(sysDep);
    }

    /**
     * 新增部门
     * 
     * @param sysDep 部门
     * @return 结果
     */
    @Override
    public int insertSysDept(SysDep sysDep)
    {
        sysDep.setCreateTime(DateUtils.getNowDate());
        return sysDepMapper.insertSysDept(sysDep);
    }

    /**
     * 修改部门
     * 
     * @param sysDep 部门
     * @return 结果
     */
    @Override
    public int updateSysDept(SysDep sysDep)
    {
        sysDep.setUpdateTime(DateUtils.getNowDate());
        return sysDepMapper.updateSysDept(sysDep);
    }

    /**
     * 批量删除部门
     * 
     * @param deptIds 需要删除的部门主键
     * @return 结果
     */
    @Override
    public int deleteSysDeptByDeptIds(Long[] deptIds)
    {
        return sysDepMapper.deleteSysDeptByDeptIds(deptIds);
    }

    /**
     * 删除部门信息
     * 
     * @param deptId 部门主键
     * @return 结果
     */
    @Override
    public int deleteSysDeptByDeptId(Long deptId)
    {
        return sysDepMapper.deleteSysDeptByDeptId(deptId);
    }
}
