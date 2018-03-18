package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface PollingMissionDao {
    List<PollingMission> queryPollingMission(PollingMission pollingMission);
    int queryPollingMissionInt(PollingMission pollingMission);
    int addPollingMission(PollingMission pollingMission);
    int updatePollingMission(PollingMission pollingMission);
    int deletePollingMission(@Param("id") int id);
    List<Circuit> queryCircuit(@Param("id") int id);
    List<User> queryUser();
    List<FlawType> queryFlawType();
    int addFlaw(Flaw flaw);
    List<Flaw> queryFlaw(@Param("pmNumber") String pmNumber, @Param("cNumber") String cNumber, @Param("beginDate") Date beginDate, @Param("finishDate") Date finishDate, @Param("pageNo") int pageNo,
                         @Param("pageSize") int pageSize,
                         @Param("typeid") int typeid,
                         @Param("grade") int grade);
   int queryFlawInt(@Param("pmNumber") String pmNumber, @Param("cNumber") String cNumber, @Param("beginDate") Date beginDate, @Param("finishDate") Date finishDate, @Param("typeid") int typeid,
                    @Param("grade") int grade
   );
}
