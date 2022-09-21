package com.ruoyi.naxin.domain;


import org.springframework.format.annotation.DateTimeFormat;

public class SeachFromSheng {

    private int id;

    private int deptId;

    private int pageSize;

    private int page;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    private int userId;

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String[] dateRange;

    //申请状态
    private String proStarts;

    public boolean getDateRangeBool() {
        boolean p = dateRange == null? false : true;
        return p;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }



    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public String[] getDateRange() {
        return dateRange;
    }

    public void setDateRange(String[] dateRange) {
        this.dateRange = dateRange;
    }

    public String getProStarts() {
        return proStarts;
    }

    public void setProStarts(String proStarts) {
        this.proStarts = proStarts;
    }

    public String getStartDate(){
        return this.dateRange[0];
    }

    public String getEndDate(){
        return this.dateRange[1];
    }

}
