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
import com.ruoyi.jifen.domain.AlJifen;
import com.ruoyi.jifen.service.IAlJifenService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * jifenController
 * 
 * @author ruoyi
 * @date 2023-05-03
 */
@RestController
@RequestMapping("/studio/jifen")
public class AlJifenController extends BaseController
{
    @Autowired
    private IAlJifenService alJifenService;

    /**
     * 查询jifen列表
     */
    @GetMapping("/list")
    public TableDataInfo list(AlJifen alJifen)
    {
        startPage();
        List<AlJifen> list = alJifenService.selectAlJifenList(alJifen);
        return getDataTable(list);
    }

    /**
     * 导出jifen列表
     */
    @Log(title = "jifen", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AlJifen alJifen)
    {
        List<AlJifen> list = alJifenService.selectAlJifenList(alJifen);
        ExcelUtil<AlJifen> util = new ExcelUtil<AlJifen>(AlJifen.class);
        util.exportExcel(response, list, "jifen数据");
    }

    /**
     * 获取jifen详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(alJifenService.selectAlJifenById(id));
    }

    /**
     * 新增jifen
     */
    @Log(title = "jifen", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AlJifen alJifen)
    {
        return toAjax(alJifenService.insertAlJifen(alJifen));
    }

    /**
     * 修改jifen
     */
    @Log(title = "jifen", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AlJifen alJifen)
    {
        return toAjax(alJifenService.updateAlJifen(alJifen));
    }

    /**
     * 删除jifen
     */
    @Log(title = "jifen", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(alJifenService.deleteAlJifenByIds(ids));
    }
}
