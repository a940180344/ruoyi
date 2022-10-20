package com.ruoyi.arl.xs.controller;

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
import com.ruoyi.arl.xs.domain.AlrXs;
import com.ruoyi.arl.xs.service.IAlrXsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 协商Controller
 * 
 * @author ruoyi
 * @date 2022-10-13
 */
@RestController
@RequestMapping("/xs/xs")
public class AlrXsController extends BaseController
{
    @Autowired
    private IAlrXsService alrXsService;

    /**
     * 查询协商列表
     */
    @GetMapping("/list")
    public TableDataInfo list(AlrXs alrXs)
    {
        startPage();
        List<AlrXs> list = alrXsService.selectAlrXsList(alrXs);
        return getDataTable(list);
    }

    /**
     * 导出协商列表
     */
    @Log(title = "协商", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AlrXs alrXs)
    {
        List<AlrXs> list = alrXsService.selectAlrXsList(alrXs);
        ExcelUtil<AlrXs> util = new ExcelUtil<AlrXs>(AlrXs.class);
        util.exportExcel(response, list, "协商数据");
    }

    /**
     * 获取协商详细信息
     */
    @GetMapping(value = "/{xsId}")
    public AjaxResult getInfo(@PathVariable("xsId") Long xsId)
    {
        return AjaxResult.success(alrXsService.selectAlrXsByXsId(xsId));
    }

    /**
     * 新增协商
     */
    @Log(title = "协商", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AlrXs alrXs)
    {
        return toAjax(alrXsService.insertAlrXs(alrXs));
    }

    /**
     * 修改协商
     */
    @Log(title = "协商", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AlrXs alrXs)
    {
        return toAjax(alrXsService.updateAlrXs(alrXs));
    }

    /**
     * 删除协商
     */
    @Log(title = "协商", businessType = BusinessType.DELETE)
	@DeleteMapping("/{xsIds}")
    public AjaxResult remove(@PathVariable Long[] xsIds)
    {
        return toAjax(alrXsService.deleteAlrXsByXsIds(xsIds));
    }
}
