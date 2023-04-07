package com.ruoyi.jifenspi.controller;

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
import com.ruoyi.jifenspi.domain.AssessJifenspi;
import com.ruoyi.jifenspi.service.IAssessJifenspiService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * jifenspiController
 * 
 * @author ruoyi
 * @date 2023-03-09
 */
@RestController
@RequestMapping("/jifenspi/jifenspi")
public class AssessJifenspiController extends BaseController
{
    @Autowired
    private IAssessJifenspiService assessJifenspiService;

    /**
     * 查询jifenspi列表
     */
    @PreAuthorize("@ss.hasPermi('jifenspi:jifenspi:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssessJifenspi assessJifenspi)
    {
        startPage();
        List<AssessJifenspi> list = assessJifenspiService.selectAssessJifenspiList(assessJifenspi);
        return getDataTable(list);
    }

    /**
     * 导出jifenspi列表
     */
    @PreAuthorize("@ss.hasPermi('jifenspi:jifenspi:export')")
    @Log(title = "jifenspi", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssessJifenspi assessJifenspi)
    {
        List<AssessJifenspi> list = assessJifenspiService.selectAssessJifenspiList(assessJifenspi);
        ExcelUtil<AssessJifenspi> util = new ExcelUtil<AssessJifenspi>(AssessJifenspi.class);
        util.exportExcel(response, list, "jifenspi数据");
    }

    /**
     * 获取jifenspi详细信息
     */
    @PreAuthorize("@ss.hasPermi('jifenspi:jifenspi:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(assessJifenspiService.selectAssessJifenspiById(id));
    }

    /**
     * 新增jifenspi
     */
    @PreAuthorize("@ss.hasPermi('jifenspi:jifenspi:add')")
    @Log(title = "jifenspi", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssessJifenspi assessJifenspi)
    {
        return toAjax(assessJifenspiService.insertAssessJifenspi(assessJifenspi));
    }

    /**
     * 修改jifenspi
     */
    @PreAuthorize("@ss.hasPermi('jifenspi:jifenspi:edit')")
    @Log(title = "jifenspi", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssessJifenspi assessJifenspi)
    {
        return toAjax(assessJifenspiService.updateAssessJifenspi(assessJifenspi));
    }

    /**
     * 删除jifenspi
     */
    @PreAuthorize("@ss.hasPermi('jifenspi:jifenspi:remove')")
    @Log(title = "jifenspi", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(assessJifenspiService.deleteAssessJifenspiByIds(ids));
    }
}
