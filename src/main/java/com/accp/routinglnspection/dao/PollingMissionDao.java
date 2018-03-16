package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.Circuit;
import com.accp.routinglnspection.entity.PollingMission;
import com.accp.routinglnspection.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PollingMissionDao {
    List<PollingMission> queryPollingMission(PollingMission pollingMission);
    int queryPollingMissionInt(PollingMission pollingMission);
    int addPollingMission(PollingMission pollingMission);
    int updatePollingMission(PollingMission pollingMission);
    int deletePollingMission(@Param("id") int id);
    List<Circuit> queryCircuit(@Param("id") int id);
    List<User> queryUser();
}
