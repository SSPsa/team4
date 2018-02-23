package com.accp.routinglnspection.entity;

import java.util.Date;

public class Role {
   private Integer id;
  private String rNumber;//'角色编号',
  private String rName;//'角色名称',
  private Integer rState;//'状态1为禁用2启用',
  private Date establishDate;//'创建时间',

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getrNumber() {
        return rNumber;
    }

    public void setrNumber(String rNumber) {
        this.rNumber = rNumber;
    }

    public String getrName() {
        return rName;
    }

    public void setrName(String rName) {
        this.rName = rName;
    }

    public Integer getrState() {
        return rState;
    }

    public void setrState(Integer rState) {
        this.rState = rState;
    }

    public Date getEstablishDate() {
        return establishDate;
    }

    public void setEstablishDate(Date establishDate) {
        this.establishDate = establishDate;
    }
}
