package com.accp.routinglnspection.entity;

import java.util.Date;

public class Flaw {
 private Integer id;
 private Integer cId;//外键线路表id',
 private Integer tId;//外键杆塔表id',
 private Integer ftId;//外键缺陷类型id',
 private Integer grade;//'缺缺陷等级1一般2严重3紧急',
 private String describe;//'缺陷描述',
 private Integer completeness;//'完成度百分比',
 private Date discoverTime;//'发布时间',
    private Integer pgid;

    private Integer discoverUid;//'发现人外键用户表id',
    private Circuit circuit;
    private Tower tower;
    private FlawType flawType;
    private User user;

    public Integer getPgid() {
        return pgid;
    }

    public void setPgid(Integer pgid) {
        this.pgid = pgid;
    }

    public Circuit getCircuit() {
        return circuit;
    }

    public void setCircuit(Circuit circuit) {
        this.circuit = circuit;
    }

    public Tower getTower() {
        return tower;
    }

    public void setTower(Tower tower) {
        this.tower = tower;
    }

    public FlawType getFlawType() {
        return flawType;
    }

    public void setFlawType(FlawType flawType) {
        this.flawType = flawType;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public Integer getFtId() {
        return ftId;
    }

    public void setFtId(Integer ftId) {
        this.ftId = ftId;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public Integer getCompleteness() {
        return completeness;
    }

    public void setCompleteness(Integer completeness) {
        this.completeness = completeness;
    }

    public Date getDiscoverTime() {
        return discoverTime;
    }

    public void setDiscoverTime(Date discoverTime) {
        this.discoverTime = discoverTime;
    }

    public Integer getDiscoverUid() {
        return discoverUid;
    }

    public void setDiscoverUid(Integer discoverUid) {
        this.discoverUid = discoverUid;
    }
}
