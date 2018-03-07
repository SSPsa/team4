package com.accp.routinglnspection.biz.impl;

import com.accp.routinglnspection.biz.TowerBiz;

import com.accp.routinglnspection.dao.TowerDao;
import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.Tower;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service("towerBiz")
public class TowerBizImpl implements TowerBiz {
    @Resource
    private TowerDao towerDao;
    public Pager<Tower> queryPager(int pageNo, int pageSize, String tNumber, int tState) {
        Pager<Tower> pager = new Pager<Tower>();
        pager.setPageNo(pageNo);
        pager.setPageSize(pageSize);
        pager.setTotalRows(towerDao.queryTowerRows(tNumber,tState));
        pager.setTotalPage( (pager.getTotalRows() + pageSize-1)/ pageSize);
        int begin = (pageNo-1)*pageSize;
        pager.setDatas(towerDao.queryPager(begin, pageSize,tNumber,tState));
        return pager;
    }

    public int delTower(Integer id) {
        return towerDao.delTower(id);
    }

    public int addTower(Tower tower) {
        return towerDao.addTower(tower);
    }

    public int updateTower(Tower tower) {
        return towerDao.updateTower(tower);
    }

    public Tower towerSelId(Tower tower) {
        return towerDao.towerSelId(tower);
    }
}
