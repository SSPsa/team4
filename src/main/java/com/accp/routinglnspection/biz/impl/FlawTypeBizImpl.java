package com.accp.routinglnspection.biz.impl;

import com.accp.routinglnspection.biz.FlawTypeBiz;
import com.accp.routinglnspection.dao.FlawTypeDao;
import com.accp.routinglnspection.entity.FlawType;
import com.accp.routinglnspection.entity.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("flawTypeBiz")
public class FlawTypeBizImpl implements FlawTypeBiz {
    @Resource
    private FlawTypeDao flawTypeDao;
    public Pager<FlawType> queryPager(int pageNo, int pageSize) {
        Pager<FlawType> pager=new Pager<FlawType>();
        pager.setPageNo(pageNo);
        pager.setPageSize(pageSize);
        pager.setTotalRows(flawTypeDao.queryFlawTypeRows());
        pager.setTotalPage( (pager.getTotalRows() + pageSize-1)/ pageSize);
        int begin = (pageNo-1)*pageSize;
        pager.setDatas(flawTypeDao.queryPager(begin,pageSize));
        return pager;
    }

    public boolean addflaw(FlawType flawType) {
        return flawTypeDao.addflaw(flawType)>0;
    }

    public List<FlawType> cha() {
        return flawTypeDao.cha();
    }

    public int DelType(int id) {
        return flawTypeDao.DelType(id);
    }

    public FlawType QueryId(int id) {
        return flawTypeDao.QueryId(id);
    }

    public int updateFlaw(FlawType flawType) {
        return flawTypeDao.updateFlaw(flawType);
    }
}
