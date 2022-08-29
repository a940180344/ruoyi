package com.ruoyi.essay.controller;

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
import com.ruoyi.essay.domain.Essay;
import com.ruoyi.essay.service.IEssayService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 发布文章Controller
 * 
 * @author ruoyi
 * @date 2022-08-08
 */
@RestController
@RequestMapping("/essay/essayFabu")
public class EssayController extends BaseController
{
    @Autowired
    private IEssayService essayService;

    /**
     * 查询发布文章列表
     */
    @PreAuthorize("@ss.hasPermi('essay:essayFabu:list')")
    @GetMapping("/list")
    public TableDataInfo list(Essay essay)
    {
        startPage();
        List<Essay> list = essayService.selectEssayList(essay);
        return getDataTable(list);
    }

    /**
     * 导出发布文章列表
     */
    @PreAuthorize("@ss.hasPermi('essay:essayFabu:export')")
    @Log(title = "发布文章", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Essay essay)
    {
        List<Essay> list = essayService.selectEssayList(essay);
        ExcelUtil<Essay> util = new ExcelUtil<Essay>(Essay.class);
        util.exportExcel(response, list, "发布文章数据");
    }

    /**
     * 获取发布文章详细信息
     */
    @PreAuthorize("@ss.hasPermi('essay:essayFabu:query')")
    @GetMapping(value = "/{essayId}")
    public AjaxResult getInfo(@PathVariable("essayId") Long essayId)
    {
        return AjaxResult.success(essayService.selectEssayByEssayId(essayId));
    }

    /**
     * 新增发布文章
     */
    @PreAuthorize("@ss.hasPermi('essay:essayFabu:add')")
    @Log(title = "发布文章", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Essay essay)
    {
        return toAjax(essayService.insertEssay(essay));
    }

    /**
     * 修改发布文章
     */
    @PreAuthorize("@ss.hasPermi('essay:essayFabu:edit')")
    @Log(title = "发布文章", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Essay essay)
    {
        return toAjax(essayService.updateEssay(essay));
    }

    /**
     * 删除发布文章
     */
    @PreAuthorize("@ss.hasPermi('essay:essayFabu:remove')")
    @Log(title = "发布文章", businessType = BusinessType.DELETE)
	@DeleteMapping("/{essayIds}")
    public AjaxResult remove(@PathVariable Long[] essayIds)
    {
        return toAjax(essayService.deleteEssayByEssayIds(essayIds));
    }
}
