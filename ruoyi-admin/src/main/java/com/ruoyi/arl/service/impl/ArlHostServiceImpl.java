package com.ruoyi.arl.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.arl.domain.ArlHost;
import com.ruoyi.arl.mapper.ArlHostMapper;
import com.ruoyi.arl.service.IArlHostService;
import io.swagger.v3.oas.annotations.servers.Server;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArlHostServiceImpl extends ServiceImpl<ArlHostMapper , ArlHost> implements IArlHostService {

}
