package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.FlawMission;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface FlawMissionDao {
    // 制定与分配分页查询
    List<FlawMission> queryFlawMisPager(@Param("pageNo") int pageNo,
                                        @Param("pageSize") int pageSize,
                                        @Param("fmNumber") String fmNumber,
                                        @Param("fmName") String fmName,
                                        @Param("fmState") int fmState,
                                        @Param("receipts") int receipts,
                                        @Param("principalUid") int principalUid,
                                        @Param("startTime") Date startTime,
                                        @Param("endTime") Date endTime,
                                        @Param("fmState1") int fmState1,
                                        @Param("fmState2") int fmState2
    );
   //查询总行数
    int queryFlawMisRows(@Param("fmNumber") String fmNumber,
                         @Param("fmName") String fmName,
                         @Param("fmState") int fmState,
                         @Param("receipts") int receipts,
                         @Param("principalUid") int principalUid,
                         @Param("startTime") Date startTime,
                         @Param("endTime") Date endTime,
                         @Param("fmState1") int fmState1,
                         @Param("fmState2") int fmState2);
    //查询单个
    FlawMission queryFlawMissionOne(@Param("fwId") int fwId);

    //新增一个
    int addFlawMission(FlawMission flawMission);
    //修改一个
    int updateFlawMission(FlawMission flawMission);

    //消缺分页查询
    List<FlawMission> queryFlawMisPager2(@Param("pageNo") int pageNo,
                                        @Param("pageSize") int pageSize,
                                        @Param("fmNumber") String fmNumber,
                                        @Param("fmState") int fmState,
                                        @Param("fId") int fId,
                                        @Param("grade") int grade,
                                        @Param("startTime") Date startTime,
                                         @Param("endTime") Date endTime);
    //消缺分页查询总行数
    int queryFlawMisRows2( @Param("fmNumber") String fmNumber,
                           @Param("fmState") int fmState,
                           @Param("fId") int fId,
                           @Param("grade") int grade,
                           @Param("startTime") Date startTime,
                           @Param("endTime") Date endTime);





}
