package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.PollingMission;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PollingMissionDao {
    List<PollingMission> queryPollingMission(PollingMission pollingMission);
    int queryPollingMissionInt(PollingMission pollingMission);
    int addPollingMission(PollingMission pollingMission);
    int updatePollingMission(PollingMission pollingMission);
    int deletePollingMission(@Param("id") int id);
}