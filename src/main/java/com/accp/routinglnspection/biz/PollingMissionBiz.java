package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.PollingMission;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PollingMissionBiz {
    Pager<PollingMission> queryPollingMission(PollingMission pollingMission);
    int addPollingMission(PollingMission pollingMission);
    int updatePollingMission(PollingMission pollingMission);
    int deletePollingMission(@Param("id") int id);
}
