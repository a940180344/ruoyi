package com.ruoyi.xm.controller;

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
import com.ruoyi.xm.domain.AssessXm;
import com.ruoyi.xm.service.IAssessXmService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * xmController
 * 
 * @author ruoyi
 * @date 2023-03-13
 */
@RestController
@RequestMapping("/xm/xm")
public class AssessXmController extends BaseController
{
    @Autowired
    private IAssessXmService assessXmService;

    /**
     * 查询xm列表
     */
    @GetMapping("/list")
    public TableDataInfo list(AssessXm assessXm)
    {
        startPage();
        List<AssessXm> list = assessXmService.selectAssessXmList(assessXm);
        return getDataTable(list);
    }

    /**
     * 导出xm列表
     */
    @Log(title = "xm", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssessXm assessXm)
    {
        List<AssessXm> list = assessXmService.selectAssessXmList(assessXm);
        ExcelUtil<AssessXm> util = new ExcelUtil<AssessXm>(AssessXm.class);
        util.exportExcel(response, list, "xm数据");
    }

    /**
     * 获取xm详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(assessXmService.selectAssessXmById(id));
    }

    /**
     * 新增xm
     */
    @Log(title = "xm", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssessXm assessXm)
    {
        return toAjax(assessXmService.insertAssessXm(assessXm));
    }

    /**
     * 修改xm
     */
    @Log(title = "xm", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssessXm assessXm)
    {
        return toAjax(assessXmService.updateAssessXm(assessXm));
    }

    /**
     * 删除xm
     */
    @Log(title = "xm", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(assessXmService.deleteAssessXmByIds(ids));
    }
}
