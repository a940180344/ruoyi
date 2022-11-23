package com.ruoyi.xm.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.core.domain.entity.SysRole;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.model.LoginUser;
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
import com.ruoyi.xm.domain.XmXm;
import com.ruoyi.xm.service.IXmXmService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 新增项目Controller
 * 
 * @author ruoyi
 * @date 2022-11-13
 */
@RestController
@RequestMapping("/studio/xm")
public class XmXmController extends BaseController
{
    @Autowired
    private IXmXmService xmXmService;

    /**
     * 查询新增项目列表
     */
    @GetMapping("/list")
    public TableDataInfo list(XmXm xmXm)
    {
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long deptId = user.getDeptId();
        xmXm.setDeptId(deptId);

        startPage();
        List<XmXm> list = xmXmService.selectXmXmList(xmXm);
        return getDataTable(list);
    }

    /**
     * 导出新增项目列表
     */
    @Log(title = "新增项目", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, XmXm xmXm)
    {
        List<XmXm> list = xmXmService.selectXmXmList(xmXm);
        ExcelUtil<XmXm> util = new ExcelUtil<XmXm>(XmXm.class);
        util.exportExcel(response, list, "新增项目数据");
    }

    /**
     * 获取新增项目详细信息
     */

    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(xmXmService.selectXmXmById(id));
    }

    /**
     * 新增新增项目
     */
    @PostMapping
    public AjaxResult add(@RequestBody XmXm xmXm)
    {
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long deptId = user.getDeptId();
        xmXm.setDeptId(deptId);
        return toAjax(xmXmService.insertXmXm(xmXm));
    }

    /**
     * 修改新增项目
     */
    @PutMapping
    public AjaxResult edit(@RequestBody XmXm xmXm)
    {
        return toAjax(xmXmService.updateXmXm(xmXm));
    }

    /**
     * 删除新增项目
     */
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(xmXmService.deleteXmXmByIds(ids));
    }
}
