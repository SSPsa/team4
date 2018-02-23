package com.accp.routinglnspection.entity;

public class Tower {
 private Integer id;
 private String tNumber;//'杆塔编号',
 private Integer tState;//'杆塔状态1禁用2启用',

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String gettNumber() {
        return tNumber;
    }

    public void settNumber(String tNumber) {
        this.tNumber = tNumber;
    }

    public Integer gettState() {
        return tState;
    }

    public void settState(Integer tState) {
        this.tState = tState;
    }
}
