package com.ruoyi.arl.controller;

import java.time.LocalDate;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.ruoyi.arl.domain.ArlSub;
import com.ruoyi.arl.domain.SeachFrom;
import com.ruoyi.arl.service.IArlHostService;
import com.ruoyi.arl.service.IArlSubService;
import com.ruoyi.common.core.domain.entity.SysRole;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.utils.DateUtils;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
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
import com.ruoyi.arl.domain.ArlNaxin;
import com.ruoyi.arl.service.IArlNaxinService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * naxinController
 * 
 * @author ruoyi
 * @date 2022-11-02
 */
@RestController
@RequestMapping("/studio/naxin")
public class ArlNaxinController extends BaseController
{
    @Autowired
    private IArlNaxinService arlNaxinService;

    @Autowired
    private IArlHostService arlHostService;

    @Autowired
    private IArlSubService arlSubService;

    /**
     * 申请工作室(纳新)
     * @return
     */
    @ApiOperation("申请工作室(纳新)")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType="query", name = "hostId", value = "所属进程id", required = true, dataType = "Integer"),
            @ApiImplicitParam(paramType="query", name = "naxinQingk", value = "学习情况",  dataType = "String"),
            @ApiImplicitParam(paramType="query", name = "naxinReason", value = "申请文件",  dataType = "String"),
            @ApiImplicitParam(paramType="query", name = "naxin_shuoming", value = "个人简介", dataType = "String"),
            @ApiImplicitParam(paramType="query", name = "naxinTechang", value = "特长说明", dataType = "String"),
            @ApiImplicitParam(paramType="query", name = "stioId", value = "申请工作室id", required = true, dataType = "Integer")
    })
    @PostMapping("/add")
    public AjaxResult add(@RequestBody ArlNaxin arlNaxin){
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long userId = user.getUserId();

        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("host_id",arlNaxin.getHostId());
        List<ArlSub> arlSubs = arlSubService.list(wrapper);

        arlNaxin.setCreateTime(DateUtils.getNowDate());
        arlNaxin.setStart("待审批");
        Long order = Long.valueOf(1);
        arlNaxin.setAppOrder(order);

        arlNaxin.setUserId(userId);
        arlNaxin.setNaxinAppover(arlSubs.get(0).getRoleId());
        arlNaxinService.save(arlNaxin);

        return AjaxResult.success("tianjiachenggong");
    }

    /**
     * 历史申请页面
     * 展示审批工作室信息（个人）
     * @return
     */
    @ApiOperation("展示审批工作室信息（个人）<无参>")

    @GetMapping("/info")
    public AjaxResult getInfoList(){
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long userId = user.getUserId();

        QueryWrapper<ArlNaxin> queryWrapper=new QueryWrapper();
        queryWrapper.eq("user_id",userId);
        queryWrapper.orderByAsc("id");

        return AjaxResult.success(arlNaxinService.list(queryWrapper));
    }


    /**
     * 管理员页面
     * 展示naxin审批
     * @return
     */
    @ApiOperation("管理员页面")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType="query", name = "pageSize", value = "分页每页数量", required = true, dataType = "Integer"),
            @ApiImplicitParam(paramType="query", name = "page", value = "分页之第几页", required = true, dataType = "Integer"),
            @ApiImplicitParam(paramType="query", name = "dateRange", value = "时间范围", required = true, dataType = "String[]"),
    })
    @PostMapping("/List")
    public AjaxResult getList(@RequestBody SeachFrom seachFrom){
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        List<SysRole> roleIds = user.getRoles();
        Long roleId = roleIds.get(0).getRoleId();
        String academy = user.getAcademy();

        QueryWrapper<ArlNaxin> queryWrapper=new QueryWrapper();
        boolean p = seachFrom.getDateRangeBool();
        if(p){
            queryWrapper.ge("creat_time",seachFrom.getStartDate());
            queryWrapper.le("creat_time",seachFrom.getEndDate());
        }
        if(seachFrom.getProStarts() != null){
            queryWrapper.eq("start",seachFrom.getProStarts());
        }

        queryWrapper.eq("naxin_appover",roleId);//

        queryWrapper.orderByDesc("start");
        IPage<ArlNaxin> ArlStioIPage = arlNaxinService.page(new com.baomidou.mybatisplus.extension.plugins.pagination.Page<>(seachFrom.getPage(),seachFrom.getPageSize()),queryWrapper);

        return AjaxResult.success(ArlStioIPage);
    }

    /**
     * 通过审批信息
     * @return
     */
    @ApiOperation("通过审批信息(纳新)")
    @PostMapping("/pass")
    public AjaxResult pass(@RequestBody ArlNaxin arlNaxin){
        arlNaxin.setStart("通过");
        Long hostId = arlNaxin.getHostId();
        Long appOrder = arlNaxin.getAppOrder();
        LocalDate date = LocalDate.now();
        arlNaxin.setCreateTime(DateUtils.getNowDate());

        QueryWrapper<ArlSub> queryWrapper=new QueryWrapper();
        queryWrapper.eq("host_id",hostId);
        List<ArlSub> arlSubs = arlSubService.list(queryWrapper);//工作室申请所有子流程

        if(arlSubs.size() == appOrder){
            //整个审批流程结束
            arlNaxin.setStart("纳新通过");
            arlNaxinService.updateById(arlNaxin);
            /***
             * 修改学生属性为加入工作室
             */


            return AjaxResult.success("操作成功");
        }
        if(arlSubs.size() > appOrder){
            //进入下一个审批

            arlNaxin.setStart("通过");
            arlNaxinService.updateById(arlNaxin);
            arlNaxin.setAppOrder(appOrder+1);
            arlNaxin.setId(null);
            arlNaxin.setStart("待审批");

//            Map<String , Object> map = new HashMap<>();
//            map.put("host_id" , hostId);
//            map.put("order",appOrder);
//            QueryWrapper<ArlSub> Wrapper=new QueryWrapper();
//            Wrapper.allEq(map);
//            List<ArlSub> arlSub = arlSubService.list(Wrapper);

            arlNaxin.setNaxinAppover(arlSubs.get(appOrder.intValue()).getRoleId());
            arlNaxinService.save(arlNaxin);
            return AjaxResult.success("操作成功");
        }
        return AjaxResult.error("操作失败");
    }

    /**
     * 驳回审批信息
     * @return
     */
    @ApiOperation("驳回审批信息(纳新)")
    @PostMapping("/overrule")
    public AjaxResult overrule(@RequestBody ArlNaxin arlNaxin){
        arlNaxin.setStart("驳回");
        LocalDate date = LocalDate.now();
        arlNaxin.setCreateTime(DateUtils.getNowDate());
        arlNaxinService.updateById(arlNaxin);
        return AjaxResult.success("操作成功");
    }

    /**
     * 拒绝审批信息
     * @return
     */
    @ApiOperation("拒绝审批信息(纳新)")
    @PostMapping("/refuse")
    public AjaxResult refuse(@RequestBody ArlNaxin arlNaxin){
        arlNaxin.setStart("拒绝");
        LocalDate date = LocalDate.now();
        arlNaxin.setCreateTime(DateUtils.getNowDate());
        arlNaxinService.updateById(arlNaxin);
        return AjaxResult.success("操作成功");
    }














    /**
     * 查询naxin列表
     */

    @GetMapping("/list")
    public TableDataInfo list(ArlNaxin arlNaxin)
    {
        startPage();
        List<ArlNaxin> list = arlNaxinService.selectArlNaxinList(arlNaxin);
        return getDataTable(list);
    }

    /**
     * 导出naxin列表
     */

    @Log(title = "naxin", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ArlNaxin arlNaxin)
    {
        List<ArlNaxin> list = arlNaxinService.selectArlNaxinList(arlNaxin);
        ExcelUtil<ArlNaxin> util = new ExcelUtil<ArlNaxin>(ArlNaxin.class);
        util.exportExcel(response, list, "naxin数据");
    }

    /**
     * 获取naxin详细信息
     */

    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(arlNaxinService.selectArlNaxinById(id));
    }

    /**
     * 新增naxin
     */

    @Log(title = "naxin", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult addRi(@RequestBody ArlNaxin arlNaxin)
    {
        return toAjax(arlNaxinService.insertArlNaxin(arlNaxin));
    }

    /**
     * 修改naxin
     */

    @Log(title = "naxin", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ArlNaxin arlNaxin)
    {
        return toAjax(arlNaxinService.updateArlNaxin(arlNaxin));
    }

    /**
     * 删除naxin
     */

    @Log(title = "naxin", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(arlNaxinService.deleteArlNaxinByIds(ids));
    }
}
