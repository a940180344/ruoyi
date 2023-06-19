package com.ruoyi.coursespi.controller;

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
import com.ruoyi.coursespi.domain.AssessCoursespi;
import com.ruoyi.coursespi.service.IAssessCoursespiService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * coursespiController
 * 
 * @author ruoyi
 * @date 2023-03-09
 */
@RestController
@RequestMapping("/coursespi/coursespi")
public class AssessCoursespiController extends BaseController
{
    @Autowired
    private IAssessCoursespiService assessCoursespiService;

    /**
     * 查询coursespi列表
     */
    @GetMapping("/list")
    public TableDataInfo list(AssessCoursespi assessCoursespi)
    {
        startPage();
        List<AssessCoursespi> list = assessCoursespiService.selectAssessCoursespiList(assessCoursespi);
        return getDataTable(list);
    }

    /**
     * 导出coursespi列表
     */
    @Log(title = "coursespi", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssessCoursespi assessCoursespi)
    {
        List<AssessCoursespi> list = assessCoursespiService.selectAssessCoursespiList(assessCoursespi);
        ExcelUtil<AssessCoursespi> util = new ExcelUtil<AssessCoursespi>(AssessCoursespi.class);
        util.exportExcel(response, list, "coursespi数据");
    }

    /**
     * 获取coursespi详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(assessCoursespiService.selectAssessCoursespiById(id));
    }

    /**
     * 新增coursespi
     */
    @Log(title = "coursespi", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssessCoursespi assessCoursespi)
    {
        return toAjax(assessCoursespiService.insertAssessCoursespi(assessCoursespi));
    }

    /**
     * 修改coursespi
     */
    @Log(title = "coursespi", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssessCoursespi assessCoursespi)
    {
        return toAjax(assessCoursespiService.updateAssessCoursespi(assessCoursespi));
    }

    /**
     * 删除coursespi
     */
    @Log(title = "coursespi", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(assessCoursespiService.deleteAssessCoursespiByIds(ids));
    }
}
