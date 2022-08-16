package com.ruoyi.naxin.controller;

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
import com.ruoyi.naxin.domain.StudioStu;
import com.ruoyi.naxin.service.IStudioStuService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 纳新Controller
 * 
 * @author ruoyi
 * @date 2022-08-16
 */
@RestController
@RequestMapping("/studio/studioNaxin")
public class StudioStuController extends BaseController
{
    @Autowired
    private IStudioStuService studioStuService;

    /**
     * 查询纳新列表
     */
    @GetMapping("/list")
    public TableDataInfo list( StudioStu studioStu,int studioId)
    {
        //加上根据教师id查询
        startPage();
        List<StudioStu> list = studioStuService.selectStudioStuList(studioStu);
        return getDataTable(list);
    }

    /**
     * 导出纳新列表
     */
    @Log(title = "纳新", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StudioStu studioStu)
    {
        List<StudioStu> list = studioStuService.selectStudioStuList(studioStu);
        ExcelUtil<StudioStu> util = new ExcelUtil<StudioStu>(StudioStu.class);
        util.exportExcel(response, list, "纳新数据");
    }

    /**
     * 获取纳新详细信息
     */

    @GetMapping(value = "/{dioId}")
    public AjaxResult getInfo(@PathVariable("dioId") Long dioId)
    {
        return AjaxResult.success(studioStuService.selectStudioStuByDioId(dioId));
    }

    /**
     * 新增纳新
     */
    @Log(title = "纳新", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StudioStu studioStu)
    {
        return toAjax(studioStuService.insertStudioStu(studioStu));
    }

    /**
     * 修改纳新
     */
    @Log(title = "纳新", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StudioStu studioStu)
    {
        return toAjax(studioStuService.updateStudioStu(studioStu));
    }

    /**
     * 删除纳新
     */
    @Log(title = "纳新", businessType = BusinessType.DELETE)
	@DeleteMapping("/{dioIds}")
    public AjaxResult remove(@PathVariable Long[] dioIds)
    {
        return toAjax(studioStuService.deleteStudioStuByDioIds(dioIds));
    }
}
