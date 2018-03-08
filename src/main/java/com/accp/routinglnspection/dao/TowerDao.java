package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.Circuit;
import com.accp.routinglnspection.entity.Tower;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TowerDao {
    List<Tower> queryPager(@Param("pageNo") int pageNo,
                           @Param("pageSize") int pageSize,
                           @Param("tNumber") String cNumber,
                           @Param("tState") int tState);

    /**
     * 查询总行数
     * @param
     * @return
     */
    int queryTowerRows(@Param("tNumber") String tNumber,
                         @Param("tState") int tState);

     Tower towerSelId(Tower tower);
     int delTower(@Param("id") Integer id);

     int updateTower(Tower tower);

     int addTower(Tower tower);
}
