package com.ruoyi.user.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.user.domain.Role;
import com.ruoyi.user.domain.Userr;
import com.ruoyi.user.domain.UserrRole;
import com.ruoyi.user.service.RoleService;
import com.ruoyi.user.service.UserrRoleServicee;
import com.ruoyi.user.service.UserrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/roleUser")
public class RoleController extends BaseController {
    @Autowired
    private RoleService roleService;
    @Autowired
    private UserrService userrService;
    @Autowired
    private UserrRoleServicee userrRoleServicee;

    @GetMapping("/userList")
    public AjaxResult list(){
        return AjaxResult.success(userrService.list());
    }

    @GetMapping("/procss")
    public AjaxResult getProcss(){
        QueryWrapper<Role> roleWrapper=new QueryWrapper();
        roleWrapper.eq("role_name","教务管理");
        List<Role> roles = roleService.list(roleWrapper);
        Long roleId = roles.get(0).getRoleId();

        QueryWrapper<UserrRole> userrRoleWrapper=new QueryWrapper();
        userrRoleWrapper.eq("role_id",roleId);
        List<UserrRole> userrRoles = userrRoleServicee.list(userrRoleWrapper);



        List<Userr> userrs = new ArrayList<Userr>();;
        for(UserrRole userrRole : userrRoles){
            QueryWrapper<Userr> userrWrapper=new QueryWrapper();
            List<Userr> userr =userrService.list(userrWrapper.eq("user_id",userrRole.getUserId()));
            userrs.add(userr.get(0));
        }


        return AjaxResult.success(userrs);
    }




}
