package com.ruoyi.jifen.controller;

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
import com.ruoyi.jifen.domain.AssessJifen;
import com.ruoyi.jifen.service.IAssessJifenService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * jifenController
 * 
 * @author ruoyi
 * @date 2023-03-08
 */
@RestController
@RequestMapping("/jifen/jifen")
public class AssessJifenController extends BaseController
{
    @Autowired
    private IAssessJifenService assessJifenService;

    /**
     * 查询jifen列表
     */
    @PreAuthorize("@ss.hasPermi('jifen:jifen:list')")
    @GetMapping("/list")
    public TableDataInfo list(AssessJifen assessJifen)
    {
        startPage();
        List<AssessJifen> list = assessJifenService.selectAssessJifenList(assessJifen);
        return getDataTable(list);
    }

    /**
     * 导出jifen列表
     */
    @PreAuthorize("@ss.hasPermi('jifen:jifen:export')")
    @Log(title = "jifen", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssessJifen assessJifen)
    {
        List<AssessJifen> list = assessJifenService.selectAssessJifenList(assessJifen);
        ExcelUtil<AssessJifen> util = new ExcelUtil<AssessJifen>(AssessJifen.class);
        util.exportExcel(response, list, "jifen数据");
    }

    /**
     * 获取jifen详细信息
     */
    @PreAuthorize("@ss.hasPermi('jifen:jifen:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(assessJifenService.selectAssessJifenById(id));
    }

    /**
     * 新增jifen
     */
    @PreAuthorize("@ss.hasPermi('jifen:jifen:add')")
    @Log(title = "jifen", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssessJifen assessJifen)
    {
        assessJifen.setJifen(assessJifen.getJiangxiang()*assessJifen.getJingsai());
        return toAjax(assessJifenService.insertAssessJifen(assessJifen));
    }

    /**
     * 修改jifen
     */
    @PreAuthorize("@ss.hasPermi('jifen:jifen:edit')")
    @Log(title = "jifen", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssessJifen assessJifen)
    {
        return toAjax(assessJifenService.updateAssessJifen(assessJifen));
    }

    /**
     * 删除jifen
     */
    @PreAuthorize("@ss.hasPermi('jifen:jifen:remove')")
    @Log(title = "jifen", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(assessJifenService.deleteAssessJifenByIds(ids));
    }
}
