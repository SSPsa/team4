package com.accp.routinglnspection.biz.impl;

import com.accp.routinglnspection.biz.FlawMissionBiz;
import com.accp.routinglnspection.dao.FlawMissionDao;
import com.accp.routinglnspection.entity.FlawMission;
import com.accp.routinglnspection.entity.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class FlawMissionBizImpl implements FlawMissionBiz {
   @Resource(name = "flawMissionDao")
    private FlawMissionDao flawMissionDao;
//   分页查询
    public Pager<FlawMission> queryFlawMisPager(int pageNo, int pageSize, String fmNumber, String fmName, int fmState, int receipts, int principalUid, Date startTime, Date endTime,int fmState1,int fmState2 ) {
        Pager<FlawMission> flawMissionPager=new Pager<FlawMission>();
        flawMissionPager.setPageNo(pageNo);
        flawMissionPager.setPageSize(pageSize);
        flawMissionPager.setTotalRows(flawMissionDao.queryFlawMisRows(fmNumber,fmName,fmState,receipts,principalUid,startTime,endTime,fmState1,fmState2));
        flawMissionPager.setTotalPage( (flawMissionPager.getTotalRows() + pageSize-1)/ pageSize);
        int begin=(pageNo-1)*pageSize;
        flawMissionPager.setDatas(flawMissionDao.queryFlawMisPager(begin,pageSize,fmNumber,fmName,fmState,receipts,principalUid,startTime,endTime,fmState1,fmState2));
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
//删除一个
    public int deleteFlawMission(int fwId) {
        return flawMissionDao.deleteFlawMission(fwId);
    }

    //消缺查询2
    public Pager<FlawMission> queryFlawMisPager2(int pageNo, int pageSize, String fmNumber, int fmState, int fId, int grade, Date startTime, Date endTime) {
        Pager<FlawMission> flawMissionPager2=new Pager<FlawMission>();
        flawMissionPager2.setPageNo(pageNo);
        flawMissionPager2.setPageSize(pageSize);
        flawMissionPager2.setTotalRows(flawMissionDao.queryFlawMisRows2(fmNumber,fmState,fId,grade,startTime,endTime));
        flawMissionPager2.setTotalPage( (flawMissionPager2.getTotalRows() + pageSize-1)/ pageSize);
        int begin=(pageNo-1)*pageSize;
        flawMissionPager2.setDatas(flawMissionDao.queryFlawMisPager2(begin,pageSize,fmNumber,fmState,fId,grade,startTime,endTime));
        return flawMissionPager2;
    }
    //    一对多的缺陷信息显示
    public List<FlawMission> queryFlawMission_Flaw(int fid) {
        return flawMissionDao.queryFlawMission_Flaw(fid);
    }
}
