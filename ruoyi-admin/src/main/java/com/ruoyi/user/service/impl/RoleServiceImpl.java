package com.ruoyi.user.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.naxin.domain.StuShenqing;
import com.ruoyi.naxin.mapper.StuShenqingMapper;
import com.ruoyi.naxin.service.IStuShenqingService;
import com.ruoyi.user.domain.Role;
import com.ruoyi.user.mapper.RoleMapper;
import com.ruoyi.user.service.RoleService;
import org.springframework.stereotype.Service;


@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {
}
