package com.ruoyi.arl.controller;

import java.time.LocalDate;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.ruoyi.arl.domain.ArlNaxin;
import com.ruoyi.arl.domain.ArlSub;
import com.ruoyi.arl.domain.SeachFrom;
import com.ruoyi.arl.service.IArlHostService;
import com.ruoyi.arl.service.IArlSubService;
import com.ruoyi.common.core.domain.entity.SysRole;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.utils.DateUtils;
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
import com.ruoyi.arl.domain.ArlDelStio;
import com.ruoyi.arl.service.IArlDelStioService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.servlet.HandlerInterceptor;

/**
 * delStioController
 * 11111
 * *
 * @author ruoyi
 * @date 2022-11-02
 */
@RestController
@RequestMapping("/delStio/del_stio")
public class ArlDelStioController extends BaseController
{

    @Autowired
    private IArlDelStioService arlDelStioService;


    @Autowired
    private IArlHostService arlHostService;

    @Autowired
    private IArlSubService arlSubService;

    /**
     * 申请工作室(销毁)
     * @return
     */
    @PostMapping("/add")
    public AjaxResult add(@RequestBody ArlDelStio arlDelStio){
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long userId = user.getUserId();

        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("host_id",arlDelStio.getHostId());
        List<ArlSub> arlSubs = arlSubService.list(wrapper);

        arlDelStio.setCreateTime(DateUtils.getNowDate());
        arlDelStio.setStart("待审批");
        Long order = Long.valueOf(1);
        arlDelStio.setAppOrder(order);


        arlDelStio.setDelStioAppover(arlSubs.get(0).getRoleId());
        arlDelStioService.save(arlDelStio);
        return AjaxResult.success("tianjiachenggong");
    }

    /**
     * 历史申请页面
     * 展示销毁工作室信息（个人）
     * @return
     */
    @GetMapping("/info")
    public AjaxResult getInfoList(){
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long userId = user.getUserId();

        QueryWrapper<ArlDelStio> queryWrapper=new QueryWrapper();
        queryWrapper.eq("user_id",userId);
        queryWrapper.orderByAsc("id");

        return AjaxResult.success(arlDelStioService.list(queryWrapper));
    }


    /**
     * 管理员页面
     * 展示naxin审批
     * @return
     */
    @PostMapping("/List")
    public AjaxResult getList(@RequestBody SeachFrom seachFrom){
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        List<SysRole> roleIds = user.getRoles();
        Long roleId = roleIds.get(0).getRoleId();
        String academy = user.getAcademy();

        QueryWrapper<ArlDelStio> queryWrapper=new QueryWrapper();
        boolean p = seachFrom.getDateRangeBool();
        if(p){
            queryWrapper.ge("creat_time",seachFrom.getStartDate());
            queryWrapper.le("creat_time",seachFrom.getEndDate());
        }
        if(seachFrom.getProStarts() != null){
            queryWrapper.eq("start",seachFrom.getProStarts());
        }

        queryWrapper.eq("del_stio_appover",roleId);//

        queryWrapper.orderByDesc("start");
        IPage<ArlDelStio> ArlStioIPage = arlDelStioService.page(new com.baomidou.mybatisplus.extension.plugins.pagination.Page<>(seachFrom.getPage(),seachFrom.getPageSize()),queryWrapper);

        return AjaxResult.success(ArlStioIPage);
    }

    /**
     * 通过审批信息
     * @return
     */
    @PostMapping("/pass")
    public AjaxResult pass(@RequestBody ArlDelStio ArlDelStio){
        ArlDelStio.setStart("通过");
        Long hostId = ArlDelStio.getHostId();
        Long appOrder = ArlDelStio.getAppOrder();
        LocalDate date = LocalDate.now();
        ArlDelStio.setCreateTime(DateUtils.getNowDate());

        QueryWrapper<ArlSub> queryWrapper=new QueryWrapper();
        queryWrapper.eq("host_id",hostId);
        List<ArlSub> arlSubs = arlSubService.list(queryWrapper);//工作室申请所有子流程

        if(arlSubs.size() == appOrder){
            //整个审批流程结束
            ArlDelStio.setStart("销毁完成");
            arlDelStioService.updateById(ArlDelStio);
            /***
             * 修改毁工作室
             */


            return AjaxResult.success("操作成功");
        }
        if(arlSubs.size() > appOrder){
            //进入下一个审批

            ArlDelStio.setStart("通过");
            arlDelStioService.updateById(ArlDelStio);
            ArlDelStio.setAppOrder(appOrder+1);
            ArlDelStio.setId(null);
            ArlDelStio.setStart("待审批");

//            Map<String , Object> map = new HashMap<>();
//            map.put("host_id" , hostId);
//            map.put("order",appOrder);
//            QueryWrapper<ArlSub> Wrapper=new QueryWrapper();
//            Wrapper.allEq(map);
//            List<ArlSub> arlSub = arlSubService.list(Wrapper);

            ArlDelStio.setDelStioAppover(arlSubs.get(appOrder.intValue()).getRoleId());
            arlDelStioService.save(ArlDelStio);
            return AjaxResult.success("操作成功");
        }
        return AjaxResult.error("操作失败");
    }

    /**
     * 驳回审批信息
     *
     * @return
     */
    @PostMapping("/overrule")
    public AjaxResult overrule(@RequestBody ArlDelStio ArlDelStio){
        ArlDelStio.setStart("驳回");
        LocalDate date = LocalDate.now();
        ArlDelStio.setCreateTime(DateUtils.getNowDate());
        arlDelStioService.updateById(ArlDelStio);
        return AjaxResult.success("操作成功");
    }














    /**
     * 导出delStio列表
     */
    @Log(title = "delStio", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ArlDelStio arlDelStio)
    {
        List<ArlDelStio> list = arlDelStioService.selectArlDelStioList(arlDelStio);
        ExcelUtil<ArlDelStio> util = new ExcelUtil<ArlDelStio>(ArlDelStio.class);
        util.exportExcel(response, list, "delStio数据");
    }

    /**
     * 获取delStio详细信息
     */

    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(arlDelStioService.selectArlDelStioById(id));
    }

    /**
     * 新增delStio
     */

    /**
     * 修改delStio
     */

    @Log(title = "delStio", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ArlDelStio arlDelStio)
    {
        return toAjax(arlDelStioService.updateArlDelStio(arlDelStio));
    }

    /**
     * 删除delStio
     */

    @Log(title = "delStio", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(arlDelStioService.deleteArlDelStioByIds(ids));
    }
}
