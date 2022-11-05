package com.ruoyi.arl.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ruoyi.arl.domain.ArlHost;
import com.ruoyi.arl.domain.ArlSub;
import com.ruoyi.arl.service.IArlHostService;
import com.ruoyi.arl.service.IArlSubService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.model.LoginUser;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/Approval")
public class ArlHostController extends BaseController {

  @Autowired
  private IArlHostService arlHostService;

  @Autowired
  private IArlSubService arlSubService;

  /**
   * 修改进程
   * @return
   */
  @ApiOperation("修改进程")
  @PostMapping("/updata")
  public AjaxResult updata(@RequestBody  List<ArlSub> acceptHS){


    //先把旧进程设为废弃状态
    Long Host_id = acceptHS.get(0).getHostId();//需要修改的进程id
    ArlHost oldArlHost = new ArlHost();
    oldArlHost = arlHostService.getById(Host_id);
    oldArlHost.setStart("废弃");
    arlHostService.saveOrUpdate(oldArlHost);
    //新进程属性添加
    ArlHost newArlHost = new ArlHost();
    newArlHost.setVersion(oldArlHost.getVersion()+1);
    LocalDate date = LocalDate.now();
    newArlHost.setCreateTime(date);
    newArlHost.setOders(acceptHS.size());
    newArlHost.setStart("正常");

    LoginUser loginUser = getLoginUser();
    SysUser user = loginUser.getUser();

    newArlHost.setCreateUser(user.getNickName());
    //插入新进程
    newArlHost.setName(oldArlHost.getName());
    arlHostService.save(newArlHost);



    //插入新进程的子进程
    for (ArlSub arlSub:acceptHS){
      arlSub.setHostId(newArlHost.getId());
      arlSub.setId(null);
    }
    arlSubService.saveBatch(acceptHS);

    return AjaxResult.success(acceptHS);
  }
  /**
   * 根据id获取进程
   * @return
   */
  @ApiOperation("根据id获取进程")
  @GetMapping("/get")
  public AjaxResult getByid(@RequestParam int id){
    QueryWrapper<ArlSub> queryWrapper=new QueryWrapper();
    queryWrapper.eq("host_id",id);
    List<ArlSub> ArlSubList = arlSubService.list(queryWrapper);
    return AjaxResult.success(ArlSubList);
  }

  /**
   * 进程字典
   * @return
   */
  @ApiOperation("进程字典")
  @GetMapping("/dictionary")
  public AjaxResult dictionary(){
    QueryWrapper<ArlHost> queryWrapper=new QueryWrapper();
    queryWrapper.select("id","name").eq("start","正常");
    List<ArlHost> ArlHostList = arlHostService.list(queryWrapper);
    return AjaxResult.success(ArlHostList);
  }


}
