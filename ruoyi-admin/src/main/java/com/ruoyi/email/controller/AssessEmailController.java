package com.ruoyi.email.controller;

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
import com.ruoyi.email.domain.AssessEmail;
import com.ruoyi.email.service.IAssessEmailService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * emailController
 * 
 * @author ruoyi
 * @date 2023-05-03
 */
@RestController
@RequestMapping("/email/email")
public class AssessEmailController extends BaseController
{
    @Autowired
    private IAssessEmailService assessEmailService;

    /**
     * 查询email列表
     */
    @GetMapping("/list")
    public TableDataInfo list(AssessEmail assessEmail)
    {
        startPage();
        List<AssessEmail> list = assessEmailService.selectAssessEmailList(assessEmail);
        return getDataTable(list);
    }

    /**
     * 导出email列表
     */
    @Log(title = "email", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AssessEmail assessEmail)
    {
        List<AssessEmail> list = assessEmailService.selectAssessEmailList(assessEmail);
        ExcelUtil<AssessEmail> util = new ExcelUtil<AssessEmail>(AssessEmail.class);
        util.exportExcel(response, list, "email数据");
    }

    /**
     * 获取email详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(assessEmailService.selectAssessEmailById(id));
    }

    /**
     * 新增email
     */
    @Log(title = "email", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AssessEmail assessEmail)
    {
        return toAjax(assessEmailService.insertAssessEmail(assessEmail));
    }

    /**
     * 修改email
     */
    @Log(title = "email", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AssessEmail assessEmail)
    {
        return toAjax(assessEmailService.updateAssessEmail(assessEmail));
    }

    /**
     * 删除email
     */
    @Log(title = "email", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(assessEmailService.deleteAssessEmailByIds(ids));
    }
}
