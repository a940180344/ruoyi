package com.ruoyi.test.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.arl.domain.ArlDelStio;
import com.ruoyi.arl.mapper.ArlDelStioMapper;
import com.ruoyi.arl.service.IArlDelStioService;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.test.mapper.TestMapper;
import com.ruoyi.test.domain.Test;
import com.ruoyi.test.service.ITestService;

/**
 * testService业务层处理
 * 
 * @author ruoyi
 * @date 2022-11-29
 */
@Service
public class TestServiceImpl extends ServiceImpl<TestMapper, Test> implements ITestService
{
    @Autowired
    private TestMapper testMapper;


}
