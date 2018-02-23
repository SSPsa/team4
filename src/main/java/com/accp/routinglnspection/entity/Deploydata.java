package com.accp.routinglnspection.entity;

public class Deploydata {
  private Integer id;
  private String ddNumber;//配置编号',
  private String ddName;//'配置名称',
  private Integer dtId;//'配置类型id',

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDdNumber() {
        return ddNumber;
    }

    public void setDdNumber(String ddNumber) {
        this.ddNumber = ddNumber;
    }

    public String getDdName() {
        return ddName;
    }

    public void setDdName(String ddName) {
        this.ddName = ddName;
    }

    public Integer getDtId() {
        return dtId;
    }

    public void setDtId(Integer dtId) {
        this.dtId = dtId;
    }
}
