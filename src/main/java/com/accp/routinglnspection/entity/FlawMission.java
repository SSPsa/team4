package com.accp.routinglnspection.entity;

public class FlawMission {
  private Integer id;
  private String fmNumber;//'任务编号',
  private String fmName;// '任务名称',
  private Integer fId;//'缺陷表id',
  private Integer principalUid;//'负责人员工表id',
  private Integer defectUid;//'消缺人',
  private Integer receipts;//'工作单据1 任务单、2第一种单据、3第二种单据',
  private String describe;//'任务完成描述',
  private String fmRemark;//'备注',

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFmNumber() {
        return fmNumber;
    }

    public void setFmNumber(String fmNumber) {
        this.fmNumber = fmNumber;
    }

    public String getFmName() {
        return fmName;
    }

    public void setFmName(String fmName) {
        this.fmName = fmName;
    }

    public Integer getfId() {
        return fId;
    }

    public void setfId(Integer fId) {
        this.fId = fId;
    }

    public Integer getPrincipalUid() {
        return principalUid;
    }

    public void setPrincipalUid(Integer principalUid) {
        this.principalUid = principalUid;
    }

    public Integer getDefectUid() {
        return defectUid;
    }

    public void setDefectUid(Integer defectUid) {
        this.defectUid = defectUid;
    }

    public Integer getReceipts() {
        return receipts;
    }

    public void setReceipts(Integer receipts) {
        this.receipts = receipts;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getFmRemark() {
        return fmRemark;
    }

    public void setFmRemark(String fmRemark) {
        this.fmRemark = fmRemark;
    }
}
