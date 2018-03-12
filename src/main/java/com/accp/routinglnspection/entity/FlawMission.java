package com.accp.routinglnspection.entity;

import java.util.Date;
import java.util.List;

/**
 * 缺陷任务
 */
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
    private Date releaseTime;//'发布时间',
    private Date accomplishTime;// '完成时间',
    private int fmState;// '状态1待分配2已分配3执行中4已完成5驳回',
    private int isPass; //审核是否通过：1通过 2不通过
    private User user;   //用户对象属性
    private Flaw flaw;  //缺陷对象属性
    private Circuit circuit;  //线路对象属性
    private Tower tower;   //杆塔对象属性
    private FlawType flawType; //缺陷类型对象属性
    private List<Flaw> flawList;  //一个任务有多个缺陷（一对多）

    public Flaw getFlaw() {
        return flaw;
    }

    public void setFlaw(Flaw flaw) {
        this.flaw = flaw;
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

    public int getIsPass() {
        return isPass;
    }

    public void setIsPass(int isPass) {
        this.isPass = isPass;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    public void setId(User user) {
        this.user =user;
    }

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

    public int getFmState() {
        return fmState;
    }

    public void setFmState(int fmState) {
        this.fmState = fmState;
    }
}
