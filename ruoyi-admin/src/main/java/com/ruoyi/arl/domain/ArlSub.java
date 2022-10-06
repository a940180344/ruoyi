package com.ruoyi.arl.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.io.Serializable;

/**
 * 所属进程对象 arl_sub
 *
 * @author ruoyi
 * @date 2022-09-16
 */
@TableName(value = "arl_sub")
public class ArlSub implements Serializable
{
    @TableId(type = IdType.AUTO)
    private Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /** 所属进程id */
    @Excel(name = "所属进程id")
    private Long hostId;

    /** 审批人id */
    @Excel(name = "审批人id")
    private Long roleId;

    public Long getHostId() {
        return hostId;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public void setOrder(Long order) {
        this.order = order;
    }

    /** 审批进程顺序 */
    @Excel(name = "审批进程顺序")
    @TableField("`order`")
    private Long order;

    /** 审批进程名称 */
    @Excel(name = "审批进程名称")
    @TableField("`name`")
    private String name;

    public void setHostId(Long hostId)
    {
        this.hostId = hostId;
    }


    public Long getOrder()
    {
        return order;
    }
    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)

                .append("id", getId())
                .append("hostId", getHostId())
                .append("order", getOrder())
                .append("name", getName())
                .toString();
    }
}