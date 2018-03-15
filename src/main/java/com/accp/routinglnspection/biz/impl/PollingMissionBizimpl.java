package com.accp.routinglnspection.biz.impl;

import com.accp.routinglnspection.biz.PollingMissionBiz;
import com.accp.routinglnspection.dao.PollingMissionDao;
import com.accp.routinglnspection.entity.Circuit;
import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.PollingMission;
import com.accp.routinglnspection.entity.User;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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
}
