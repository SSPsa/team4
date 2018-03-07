package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.FlawMission;
import com.accp.routinglnspection.entity.Pager;

import java.util.Date;

public interface FlawMissionBiz {
    //分页查询
    Pager<FlawMission> queryFlawMisPager(int pageNo,
                                         int pageSize,
                                         String fmNumber,
                                         String fmName,
                                         int fmState,
                                         int principalUid,
                                         Date startTime,
                                         Date endTime);
    //单个查询
    FlawMission queryFlawMissionOne(int fwId);

    //新增一个
    int addFlawMission(FlawMission flawMission);
    //修改一个
    int updateFlawMission(FlawMission flawMission);



}
