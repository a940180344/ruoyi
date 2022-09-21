package com.ruoyi.arl.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;


import java.io.Serializable;
import java.time.LocalDate;


/**
 * 进程对象 arl_host
 *
 * @author ruoyi
 * @date 2022-09-15
 */
@TableName(value = "arl_host")
public class ArlHost  implements Serializable
{

    /**  */
    @TableId(value = "id",type = IdType.AUTO)
    private Long id;

    /** 审批进程名 */
    @Excel(name = "审批进程名")
    private String name;

    /** 审批进程修改人 */
    @Excel(name = "审批进程修改人")
    private String createUser;

    /** 审批进程版本 */
    @Excel(name = "审批进程版本")
    private int version;

    private String start;

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public Integer getOders() {
        return oders;
    }

    public void setOders(Integer oders) {
        this.oders = oders;
    }

    @JsonFormat(pattern = "yyyy-MM-dd")
    private LocalDate CreateTime;

    private Integer oders;

    public LocalDate getCreateTime() {
        return CreateTime;
    }


    public void setCreateTime(LocalDate createTime) {
        CreateTime = createTime;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
    public void setCreateUser(String createUser)
    {
        this.createUser = createUser;
    }

    public String getCreateUser()
    {
        return createUser;
    }
    public void setVersion(int version)
    {
        this.version = version;
    }

    public int getVersion()
    {
        return version;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("name", getName())
                .append("createTime", getCreateTime())
                .append("createUser", getCreateUser())
                .append("version", getVersion())
                .append("oders",getOders())
                .toString();
    }
}