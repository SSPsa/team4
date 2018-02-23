package com.accp.routinglnspection.entity;

public class Deploytype {
  private Integer id;
  private String dtNumber;//'配置类型编号',
  private String dtName;//'配置类型名称',
  private String describe;//'描述',
  private Integer dtState;//'状态1禁用2启用',

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDtNumber() {
        return dtNumber;
    }

    public void setDtNumber(String dtNumber) {
        this.dtNumber = dtNumber;
    }

    public String getDtName() {
        return dtName;
    }

    public void setDtName(String dtName) {
        this.dtName = dtName;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public Integer getDtState() {
        return dtState;
    }

    public void setDtState(Integer dtState) {
        this.dtState = dtState;
    }
}
