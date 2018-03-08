package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.Circuit;
import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.Tower;
import org.apache.ibatis.annotations.Param;

public interface TowerBiz {
    Pager<Tower> queryPager(int pageNo,
                            int pageSize,
                            String tNumber,
                            int tState);

    int delTower(Integer id);
    int addTower(Tower tower);
    int updateTower(Tower tower);
    Tower towerSelId(Tower tower);

}
