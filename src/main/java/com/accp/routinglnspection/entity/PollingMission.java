package com.accp.routinglnspection.entity;

import java.util.Date;

public class PollingMission {
  private Integer id;
  private String pmName;//'巡查任务名称',
  private String pmNumber;//'巡查任务编号',
  private Integer cId;//'外键线路表id',
  private Integer releaseUid;//'发布人外键用户表id',
  private Integer pollingUid;//'巡查员外键用户表id',
  private String pmRemark;//'备注',
  private Date releaseTime;//'发布时间',
  private Date accomplishTime;//'完成时间',
  private Integer pmState;//状态1待分配2已分配3执行中4已完成',
    private Circuit circuit;//线路表对象
    private Integer state;//状态0禁用1启用

    private int pageNo;//第几页
    private int pageSize;//分布行数
    private int begin;//计算数据库第几列开
    private User release;//发布人对象

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public User getRelease() {
        return release;
    }

    public void setRelease(User release) {
        this.release = release;
    }

    public int getBegin() {
        return begin;
    }

    public void setBegin(int begin) {
        this.begin = begin;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public Circuit getCircuit() {
        return circuit;
    }

    public void setCircuit(Circuit circuit) {
        this.circuit = circuit;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPmName() {
        return pmName;
    }

    public void setPmName(String pmName) {
        this.pmName = pmName;
    }

    public String getPmNumber() {
        return pmNumber;
    }

    public void setPmNumber(String pmNumber) {
        this.pmNumber = pmNumber;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Integer getReleaseUid() {
        return releaseUid;
    }

    public void setReleaseUid(Integer releaseUid) {
        this.releaseUid = releaseUid;
    }

    public Integer getPollingUid() {
        return pollingUid;
    }

    public void setPollingUid(Integer pollingUid) {
        this.pollingUid = pollingUid;
    }

    public String getPmRemark() {
        return pmRemark;
    }

    public void setPmRemark(String pmRemark) {
        this.pmRemark = pmRemark;
    }

    public Date getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Date releaseTime) {
        this.releaseTime = releaseTime;
    }

    public Date getAccomplishTime() {
        return accomplishTime;
    }

    public void setAccomplishTime(Date accomplishTime) {
        this.accomplishTime = accomplishTime;
    }

    public Integer getPmState() {
        return pmState;
    }

    public void setPmState(Integer pmState) {
        this.pmState = pmState;
    }
}
