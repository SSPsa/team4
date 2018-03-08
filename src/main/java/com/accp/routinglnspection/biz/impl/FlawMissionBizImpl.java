package com.accp.routinglnspection.biz.impl;

import com.accp.routinglnspection.biz.FlawMissionBiz;
import com.accp.routinglnspection.dao.FlawMissionDao;
import com.accp.routinglnspection.entity.FlawMission;
import com.accp.routinglnspection.entity.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

@Service
public class FlawMissionBizImpl implements FlawMissionBiz {
   @Resource(name = "flawMissionDao")
    private FlawMissionDao flawMissionDao;
//   分页查询
    public Pager<FlawMission> queryFlawMisPager(int pageNo, int pageSize, String fmNumber, String fmName, int fmState, int receipts, int principalUid, Date startTime, Date endTime) {
        Pager<FlawMission> flawMissionPager=new Pager<FlawMission>();
        flawMissionPager.setPageNo(pageNo);
        flawMissionPager.setPageSize(pageSize);
        flawMissionPager.setTotalRows(flawMissionDao.queryFlawMisRows(fmNumber,fmName,fmState,receipts,principalUid,startTime,endTime));
        flawMissionPager.setTotalPage( (flawMissionPager.getTotalRows() + pageSize-1)/ pageSize);
        int begin=(pageNo-1)*pageSize;
        flawMissionPager.setDatas(flawMissionDao.queryFlawMisPager(begin,pageSize,fmNumber,fmName,fmState,receipts,principalUid,startTime,endTime));
        return flawMissionPager;
    }
//查询单个
    public FlawMission queryFlawMissionOne(int fwId) {
        return flawMissionDao.queryFlawMissionOne(fwId);
    }
//新增一个
    public int addFlawMission(FlawMission flawMission) {
        return flawMissionDao.addFlawMission(flawMission);
    }
//修改一个
    public int updateFlawMission(FlawMission flawMission) {
        return flawMissionDao.updateFlawMission(flawMission);
    }
}
