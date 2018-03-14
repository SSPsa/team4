package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.FlawMission;
import com.accp.routinglnspection.entity.Pager;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface FlawMissionBiz {
    //分页查询
    Pager<FlawMission> queryFlawMisPager(int pageNo,
                                         int pageSize,
                                         String fmNumber,
                                         String fmName,
                                         int fmState,
                                         int receipts,
                                         int principalUid,
                                         Date startTime,
                                         Date endTime,
                                         int fmState1,
                                         int fmState2);
    //单个查询
    FlawMission queryFlawMissionOne(int fwId);

    //新增一个
    int addFlawMission(FlawMission flawMission);
    //修改一个
    int updateFlawMission(FlawMission flawMission);
    int deleteFlawMission(int fwId);

//缺陷查询
    Pager<FlawMission> queryFlawMisPager2(int pageNo,
                                          int pageSize,
                                          String fmNumber,
                                          int fmState,
                                          int fId,
                                          int grade,
                                          Date startTime,
                                          Date endTime);
//    一对多的缺陷信息显示
    List<FlawMission> queryFlawMission_Flaw(int fid);


}
