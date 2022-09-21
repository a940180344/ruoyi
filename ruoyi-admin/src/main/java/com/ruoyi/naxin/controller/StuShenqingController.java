package com.ruoyi.naxin.controller;

import java.time.LocalDate;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.naxin.domain.SeachFromSheng;
import com.ruoyi.naxin.service.IUserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.naxin.domain.StuShenqing;
import com.ruoyi.naxin.service.IStuShenqingService;


/**
 * 工作室申请Controller
 *
 * @author ruoyi
 * @date 2022-09-19
 */

@RestController
@RequestMapping("/studio/studioNaxin")
public class StuShenqingController extends BaseController
{
    @Autowired
    private IStuShenqingService stuShenqingService;

    @Autowired
    private IUserRoleService userRoleService;
    /**
     * 查询工作室申请列表
     */

        @GetMapping("/list")
    public AjaxResult list(@RequestBody SeachFromSheng seachFrom)
    {
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long deptId = user.getDeptId();

        QueryWrapper<StuShenqing> queryWrapper=new QueryWrapper();
        boolean p = seachFrom.getDateRangeBool();
        if(p){
            queryWrapper.ge("creat_time",seachFrom.getStartDate());
            queryWrapper.le("creat_time",seachFrom.getEndDate());
        }
        if(seachFrom.getProStarts() != null){
            queryWrapper.eq("start",seachFrom.getProStarts());
        }

        queryWrapper.eq("dept_id",deptId);
        queryWrapper.orderByDesc("start");
        IPage<StuShenqing> stuShenqingIPage = stuShenqingService.page(new com.baomidou.mybatisplus.extension.plugins.pagination.Page<>(seachFrom.getPage(),seachFrom.getPageSize()),queryWrapper);

        return AjaxResult.success(stuShenqingIPage);
    }


    /**
     * 获取工作室申请详细信息
     */

    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {

        return AjaxResult.success(stuShenqingService.getById(id));
    }
    /**
     * 新增工作室申请
     */

    @Log(title = "工作室申请", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StuShenqing stuShenqing)
    {
        LocalDate date = LocalDate.now();
        stuShenqing.setStuTime(date);
        stuShenqing.setStuStarts("待审批");
        Long start = Long.valueOf(1);
        stuShenqing.setStarts(start);
        stuShenqingService.save(stuShenqing);
        //插入时间，状态，第几次申请，
        return AjaxResult.success("操作成功");
    }

    /**
     * 通过审批学生申请
     */

    @Log(title = "工作室申请", businessType = BusinessType.UPDATE)
    @GetMapping
    public AjaxResult tongGuo(@RequestBody StuShenqing stuShenqing)
    {


        return AjaxResult.success(userRoleService.list());
    }

    /**
     * 驳回审批学生申请
     */


    @PostMapping("bohui")
    public AjaxResult bouHui(@RequestBody StuShenqing stuShenqing)
    {
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long userId = user.getUserId();

        LocalDate date = LocalDate.now();
        stuShenqing.setBoHui(date);
        stuShenqing.setJujueMan(userId);
        stuShenqing.setStuStarts("驳回");

        stuShenqingService.updateById(stuShenqing);
        return AjaxResult.success("cheng");
    }

}
