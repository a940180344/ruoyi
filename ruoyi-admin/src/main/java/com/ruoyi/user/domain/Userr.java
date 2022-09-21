package com.ruoyi.user.domain;

import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;

@TableName(value = "sys_user")
public class Userr implements Serializable {
    private Long userId;
    private String nickName;

    private String userName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }
}
