package com.ruoyi.studio.wenjian.controller;

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
import com.ruoyi.studio.wenjian.domain.AssessWenjian;
import com.ruoyi.studio.wenjian.service.IAssessWenjianService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * wenjianController
 * 
 * @author ruoyi
 * @date 2023-03-09
 */
@RestController
@RequestMapping("/wenjian/wenjian")
public class AssessWenjianController extends BaseController
{
    @Autowired
    private IAssessWenjianService assessWenjianService;

    /**
     * 查询wenjian列表
     */
    @PreAuthorize("@ss.hasPermi('wenjian:wenjian:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssessWenjian assessWenjian)
    {
        assessWenjian.setDeptId(Math.toIntExact(getDeptId()));
        startPage();
        List<AssessWenjian> list = assessWenjianService.selectAssessWenjianList(assessWenjian);
        return getDataTable(list);
    }

    /**
     * 导出wenjian列表
     */
    @PreAuthorize("@ss.hasPermi('wenjian:wenjian:export')")
    @Log(title = "wenjian", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssessWenjian assessWenjian)
    {
        List<AssessWenjian> list = assessWenjianService.selectAssessWenjianList(assessWenjian);
        ExcelUtil<AssessWenjian> util = new ExcelUtil<AssessWenjian>(AssessWenjian.class);
        util.exportExcel(response, list, "wenjian数据");
    }

    /**
     * 获取wenjian详细信息
     */
    @PreAuthorize("@ss.hasPermi('wenjian:wenjian:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(assessWenjianService.selectAssessWenjianById(id));
    }

    /**
     * 新增wenjian
     */
    @PreAuthorize("@ss.hasPermi('wenjian:wenjian:add')")
    @Log(title = "wenjian", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssessWenjian assessWenjian)
    {
        assessWenjian.setDeptId(Math.toIntExact(getDeptId()));
        return toAjax(assessWenjianService.insertAssessWenjian(assessWenjian));
    }

    /**
     * 修改wenjian
     */
    @PreAuthorize("@ss.hasPermi('wenjian:wenjian:edit')")
    @Log(title = "wenjian", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssessWenjian assessWenjian)
    {
        return toAjax(assessWenjianService.updateAssessWenjian(assessWenjian));
    }

    /**
     * 删除wenjian
     */
    @PreAuthorize("@ss.hasPermi('wenjian:wenjian:remove')")
    @Log(title = "wenjian", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(assessWenjianService.deleteAssessWenjianByIds(ids));
    }
}
