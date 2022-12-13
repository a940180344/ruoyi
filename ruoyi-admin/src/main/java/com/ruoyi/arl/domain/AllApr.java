package com.ruoyi.arl.domain;

import java.util.List;

public class AllApr {
    private String name;

    private List subList;//所有的

    private Long crrut;//当前进行步骤

    private List ownList;//个人的

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List getSubList() {
        return subList;
    }

    public void setSubList(List subList) {
        this.subList = subList;
    }

    public Long getCrrut() {
        return crrut;
    }

    public void setCrrut(Long crrut) {
        this.crrut = crrut;
    }

    public List getOwnList() {
        return ownList;
    }

    public void setOwnList(List ownList) {
        this.ownList = ownList;
    }
}
