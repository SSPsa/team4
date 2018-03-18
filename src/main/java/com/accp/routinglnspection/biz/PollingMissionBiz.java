package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface PollingMissionBiz {
    Pager<PollingMission> queryPollingMission(PollingMission pollingMission);
    int addPollingMission(PollingMission pollingMission);
    int updatePollingMission(PollingMission pollingMission);
    int deletePollingMission(int id);
    List<Circuit> queryCircuit(int id);
    List<User> queryUser();
    List<FlawType> queryFlawType();
    int addFlaw(Flaw flaw);
    Pager<Flaw> queryFlaw(@Param("pmNumber") String pmNumber, @Param("cNumber") String cNumber, @Param("beginDate") Date beginDate, @Param("finishDate") Date finishDate, @Param("pageNo") int pageNo,
                          @Param("pageSize") int pageSize, @Param("typeid") int typeid,
                          @Param("grade") int grade);
}
