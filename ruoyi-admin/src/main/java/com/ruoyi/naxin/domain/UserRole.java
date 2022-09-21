package com.ruoyi.naxin.domain;

import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;

@TableName(value = "sys_user_role")
public class UserRole implements Serializable {
    private int userId;
    private int roleId;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }
}
