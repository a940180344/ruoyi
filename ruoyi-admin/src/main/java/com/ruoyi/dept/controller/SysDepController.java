package com.ruoyi.dept.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.dept.domain.SysDep;
import com.ruoyi.dept.service.ISysDepService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 部门Controller
 * 
 * @author ruoyi
 * @date 2022-08-15
 */
@RestController
@RequestMapping("/dept/dept")
public class SysDepController extends BaseController
{
    @Autowired
    private ISysDepService sysDeptService;

    /**
     * 查询部门列表
     */
    @PreAuthorize("@ss.hasPermi('dept:dept:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysDep sysDep)
    {
        startPage();
        List<SysDep> list = sysDeptService.selectSysDeptList(sysDep);
        return getDataTable(list);
    }

    /**
     * 导出部门列表
     */
    @PreAuthorize("@ss.hasPermi('dept:dept:export')")
    @Log(title = "部门", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysDep sysDep)
    {
        List<SysDep> list = sysDeptService.selectSysDeptList(sysDep);
        ExcelUtil<SysDep> util = new ExcelUtil<SysDep>(SysDep.class);
        util.exportExcel(response, list, "部门数据");
    }

    /**
     * 获取部门详细信息
     */
    @PreAuthorize("@ss.hasPermi('dept:dept:query')")
    @GetMapping(value = "/{deptId}")
    public AjaxResult getInfo(@PathVariable("deptId") Long deptId)
    {
        return AjaxResult.success(sysDeptService.selectSysDeptByDeptId(deptId));
    }

    /**
     * 新增部门
     */
    @PreAuthorize("@ss.hasPermi('dept:dept:add')")
    @Log(title = "部门", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysDep sysDep)
    {
        return toAjax(sysDeptService.insertSysDept(sysDep));
    }

    /**
     * 修改部门
     */
    @PreAuthorize("@ss.hasPermi('dept:dept:edit')")
    @Log(title = "部门", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysDep sysDep)
    {
        return toAjax(sysDeptService.updateSysDept(sysDep));
    }

    /**
     * 删除部门
     */
    @PreAuthorize("@ss.hasPermi('dept:dept:remove')")
    @Log(title = "部门", businessType = BusinessType.DELETE)
	@DeleteMapping("/{deptIds}")
    public AjaxResult remove(@PathVariable Long[] deptIds)
    {
        return toAjax(sysDeptService.deleteSysDeptByDeptIds(deptIds));
    }
}
