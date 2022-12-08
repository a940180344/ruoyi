package com.ruoyi.test.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.core.domain.R;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.test.domain.Test;
import com.ruoyi.test.service.ITestService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * testController
 * 
 * @author ruoyi
 * @date 2022-11-29
 */
@RestController
@RequestMapping("/test/test1")
public class TestController11 extends BaseController
{
    @Autowired
    private ITestService testService;

    @PostMapping("/add")
    public AjaxResult add(){
        Test test1 = new Test();
        return AjaxResult.success(testService.save(test1));
    }

}
