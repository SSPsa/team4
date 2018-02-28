package com.accp.routinglnspection.entity;

import java.util.Date;

public class Circuit {
    private Integer id;
    private String cNumber;//线路编号',
    private String cName;//线路名称',
    private Integer cLength;//'线路长度',
    private Integer loopLength;//'回路长度',
    private Integer cardinalNumber;//'杆塔基数',
    private String riseTid;//'起始杆，杆塔表id',
    private String endTid;//'终止杆，杆塔表id',
    private Date commissioningData;//'投运日期',
    private Integer grade;//'电压等级',
    private Integer cState;//'状态0为禁用1为启用',
    private Integer yState;//'状态1为正常2为停用',
    private String cRemark;// '备注',


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getcNumber() {
        return cNumber;
    }

    public void setcNumber(String cNumber) {
        this.cNumber = cNumber;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public Integer getcLength() {
        return cLength;
    }

    public void setcLength(Integer cLength) {
        this.cLength = cLength;
    }

    public Integer getLoopLength() {
        return loopLength;
    }

    public void setLoopLength(Integer loopLength) {
        this.loopLength = loopLength;
    }

    public Integer getCardinalNumber() {
        return cardinalNumber;
    }

    public void setCardinalNumber(Integer cardinalNumber) {
        this.cardinalNumber = cardinalNumber;
    }

    public String getRiseTid() {
        return riseTid;
    }

    public void setRiseTid(String riseTid) {
        this.riseTid = riseTid;
    }

    public String getEndTid() {
        return endTid;
    }

    public void setEndTid(String endTid) {
        this.endTid = endTid;
    }

    public Date getCommissioningData() {
        return commissioningData;
    }

    public void setCommissioningData(Date commissioningData) {
        this.commissioningData = commissioningData;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Integer getcState() {
        return cState;
    }

    public void setcState(Integer cState) {
        this.cState = cState;
    }

    public String getcRemark() {
        return cRemark;
    }

    public void setcRemark(String cRemark) {
        this.cRemark = cRemark;
    }

    public Integer getyState() {
        return yState;
    }

    public void setyState(Integer yState) {
        this.yState = yState;
    }
}