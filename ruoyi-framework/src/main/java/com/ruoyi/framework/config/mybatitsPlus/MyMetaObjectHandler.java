package com.ruoyi.framework.config.mybatitsPlus;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.model.LoginUser;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 自动填充的字段处理
 * 字段上方需要添加@TableField注解
 */
@Component
public class MyMetaObjectHandler extends BaseController implements MetaObjectHandler {

    @Override
    public void insertFill(MetaObject metaObject) {
        this.strictInsertFill(metaObject, "createTime", Date.class, new Date());
        this.strictInsertFill(metaObject, "userId", Long.class, getUserId());
        this.strictInsertFill(metaObject, "deptId", Long.class, getDeptId());
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        this.strictUpdateFill(metaObject, "updateTime", Date.class, new Date()); // 起始版本 3.3.0(推荐)
    }
    public Long getUserId(){
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long userId = user.getUserId();
        Long deptId = user.getDeptId();
        return userId;
    }
    public Long getDeptId(){
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        Long userId = user.getUserId();
        Long deptId = user.getDeptId();
        return deptId;
    }
}
