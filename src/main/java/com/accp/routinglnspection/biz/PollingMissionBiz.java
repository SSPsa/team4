package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.Circuit;
import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.PollingMission;
import com.accp.routinglnspection.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PollingMissionBiz {
    Pager<PollingMission> queryPollingMission(PollingMission pollingMission);
    int addPollingMission(PollingMission pollingMission);
    int updatePollingMission(PollingMission pollingMission);
    int deletePollingMission(int id);
    List<Circuit> queryCircuit(int id);
    List<User> queryUser();
}
