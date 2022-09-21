package com.ruoyi.arl.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.ruoyi.arl.domain.ArlHost;
import com.ruoyi.arl.domain.ArlStio;
import com.ruoyi.arl.domain.ArlSub;
import com.ruoyi.arl.domain.SeachFrom;
import com.ruoyi.arl.service.IArlHostService;
import com.ruoyi.arl.service.IArlStioService;
import com.ruoyi.arl.service.IArlSubService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.model.LoginUser;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;


import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/studio/application")
public class ArlStioController extends BaseController {
    @Autowired
    private IArlHostService arlHostService;

    @Autowired
    private IArlSubService arlSubService;

    @Autowired
    private IArlStioService arlStioService;


    /**
     * 申请工作室
     * @return
     */
    @PostMapping("/add")
    public AjaxResult add(@RequestBody ArlStio arlStio){
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long userId = user.getUserId();
        LocalDate date = LocalDate.now();

        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("host_id",arlStio.getHostId());
        List<ArlSub> arlSubs = arlSubService.list(wrapper);

        arlStio.setCreateTime(date);
        arlStio.setStart("待审批");
        Long order = Long.valueOf(1);
        arlStio.setAppOrder(order);
        arlStio.setStioAppover(arlSubs.get(0).getUserId());
        arlStioService.save(arlStio);

        return null;
    }

    /**
     * 历史申请页面
     * 展示审批工作室信息（个人）
     * @return
     */
    @GetMapping("/info")
    public AjaxResult getInfoList(){
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long userId = user.getUserId();

        QueryWrapper<ArlStio> queryWrapper=new QueryWrapper();
        queryWrapper.eq("stio_teacher",userId);
        queryWrapper.orderByDesc("create_time");

        return AjaxResult.success(arlStioService.list(queryWrapper));
    }

    /**
     * 管理员页面
     * 展示审批工作室信息
     * @return
     */
    @PostMapping("/List")
    public AjaxResult getList(@RequestBody SeachFrom seachFrom){
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long userId = user.getUserId();

        QueryWrapper<ArlStio> queryWrapper=new QueryWrapper();
        boolean p = seachFrom.getDateRangeBool();
        if(p){
            queryWrapper.ge("creat_time",seachFrom.getStartDate());
            queryWrapper.le("creat_time",seachFrom.getEndDate());
        }
        if(seachFrom.getProStarts() != null){
            queryWrapper.eq("start",seachFrom.getProStarts());
        }

        queryWrapper.eq("stio_appover",userId);
        queryWrapper.orderByDesc("start");
        IPage<ArlStio> ArlStioIPage = arlStioService.page(new com.baomidou.mybatisplus.extension.plugins.pagination.Page<>(seachFrom.getPage(),seachFrom.getPageSize()),queryWrapper);

        return AjaxResult.success(ArlStioIPage);
    }



    /**
     * 通过审批信息
     * @return
     */
    @PostMapping("/pass")
    public AjaxResult pass(@RequestBody ArlStio arlStio){
        arlStio.setStart("通过");
        Long hostId = arlStio.getHostId();
        Long appOrder = arlStio.getAppOrder();

        QueryWrapper<ArlSub> queryWrapper=new QueryWrapper();
        queryWrapper.eq("host_id",hostId);
        List<ArlSub> arlSubs = arlSubService.list(queryWrapper);//工作室申请所有子流程

        if(arlSubs.size() == appOrder){
            //整个审批流程结束
            arlStio.setStart("允许创建工作室");
            arlStioService.updateById(arlStio);
            return AjaxResult.success("操作成功");
        }
        if(arlSubs.size() > appOrder){
            //进入下一个审批

            arlStio.setStart("通过");
            arlStioService.updateById(arlStio);
            arlStio.setAppOrder(appOrder+1);
            arlStio.setId(null);
            arlStio.setStart("待审批");

//            Map<String , Object> map = new HashMap<>();
//            map.put("host_id" , hostId);
//            map.put("order",appOrder);
//            QueryWrapper<ArlSub> Wrapper=new QueryWrapper();
//            Wrapper.allEq(map);
//            List<ArlSub> arlSub = arlSubService.list(Wrapper);

            arlStio.setStioAppover(arlSubs.get(appOrder.intValue()).getUserId());
            arlStioService.save(arlStio);
            return AjaxResult.success("操作成功");
        }
        return AjaxResult.error("操作失败");
    }

    /**
     * 驳回审批信息
     * @return
     */
    @PostMapping("/overrule")
    public AjaxResult overrule(@RequestBody ArlStio arlStio){
        arlStio.setStart("驳回");
        arlStioService.updateById(arlStio);
        return AjaxResult.success("操作成功");
    }

    /**
     * 拒绝审批信息
     * @return
     */
    @PostMapping("/refuse")
    public AjaxResult refuse(@RequestBody ArlStio arlStio){
        arlStio.setStart("拒绝");
        arlStioService.updateById(arlStio);
        return AjaxResult.success("操作成功");
    }
}
