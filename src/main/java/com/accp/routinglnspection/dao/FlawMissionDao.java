package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.FlawMission;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface FlawMissionDao {
    // 用户分页查询
    List<FlawMission> queryFlawMisPager(@Param("pageNo") int pageNo,
                                        @Param("pageSize") int pageSize,
                                        @Param("fmNumber") String fmNumber,
                                        @Param("fmName") String fmName,
                                        @Param("fmState") int fmState,
                                        @Param("receipts") int receipts,
                                        @Param("principalUid") int principalUid,
                                        @Param("startTime") Date startTime,
                                        @Param("endTime") Date endTime);
   //查询总行数
    int queryFlawMisRows(@Param("fmNumber") String fmNumber,
                         @Param("fmName") String fmName,
                         @Param("fmState") int fmState,
                         @Param("receipts") int receipts,
                         @Param("principalUid") int principalUid,
                         @Param("startTime") Date startTime,
                         @Param("endTime") Date endTime);
    //查询单个
    FlawMission queryFlawMissionOne(@Param("fwId") int fwId);

    //新增一个
    int addFlawMission(FlawMission flawMission);
    //修改一个
    int updateFlawMission(FlawMission flawMission);



}
