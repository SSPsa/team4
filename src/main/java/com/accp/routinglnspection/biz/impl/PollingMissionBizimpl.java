package com.accp.routinglnspection.biz.impl;

import com.accp.routinglnspection.biz.PollingMissionBiz;
import com.accp.routinglnspection.dao.PollingMissionDao;
import com.accp.routinglnspection.entity.*;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class PollingMissionBizimpl implements PollingMissionBiz {
    @Resource
    private PollingMissionDao pollingMissionDao;
    public Pager<PollingMission> queryPollingMission(PollingMission pollingMission) {
        Pager<PollingMission> pager = new Pager<PollingMission>();
        pager.setPageNo(pollingMission.getPageNo());
        pager.setPageSize(pollingMission.getPageSize());
        pager.setTotalRows(pollingMissionDao.queryPollingMissionInt(pollingMission));
        pager.setTotalPage( (pager.getTotalRows() +pollingMission.getPageSize()-1)/ pollingMission.getPageSize());
        pollingMission.setBegin((pollingMission.getPageNo()-1)*pollingMission.getPageSize());
        pager.setDatas(pollingMissionDao.queryPollingMission(pollingMission));
        return pager;
    }
    public int addPollingMission(PollingMission pollingMission) {
        return pollingMissionDao.addPollingMission(pollingMission);
    }

    public int updatePollingMission(PollingMission pollingMission) {
        return pollingMissionDao.updatePollingMission(pollingMission);
    }

    public int deletePollingMission(int id) {
        return pollingMissionDao.deletePollingMission(id);
    }

    public List<Circuit> queryCircuit(int id) {
        return pollingMissionDao.queryCircuit(id);
    }

    public List<User> queryUser() {
        return pollingMissionDao.queryUser();
    }

    public List<FlawType> queryFlawType() {
        return pollingMissionDao.queryFlawType();
    }

    public int addFlaw(Flaw flaw) {
        return pollingMissionDao.addFlaw(flaw);
    }

    public Pager<Flaw> queryFlaw(String pmNumber, String cNumber, Date beginDate, Date finishDate, int pageNo, int pageSize, int typeid, int grade) {
        Pager<Flaw> pager=new Pager<Flaw>();
        pager.setPageNo(pageNo);
        pager.setPageSize(pageSize);
        pager.setTotalRows(pollingMissionDao.queryFlawInt(pmNumber,cNumber,beginDate,finishDate,typeid,grade));
        pager.setTotalPage( (pager.getTotalRows() + pageSize-1)/ pageSize);
        int begin = (pageNo-1)*pageSize;
        pager.setDatas(pollingMissionDao.queryFlaw(pmNumber,cNumber,beginDate,finishDate,pageNo,pageSize,typeid,grade));
        return pager;
    }
}
