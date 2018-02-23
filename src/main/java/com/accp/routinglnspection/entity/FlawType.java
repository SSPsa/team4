package com.accp.routinglnspection.entity;

public class FlawType {
  private Integer id;
  private String ftName;//'缺陷类型名称',
  private Integer ftState;//'状态1禁用2启用',

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFtName() {
        return ftName;
    }

    public void setFtName(String ftName) {
        this.ftName = ftName;
    }

    public Integer getFtState() {
        return ftState;
    }

    public void setFtState(Integer ftState) {
        this.ftState = ftState;
    }
}
