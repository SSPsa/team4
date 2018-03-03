package com.accp.routinglnspection.biz.impl;

import com.accp.routinglnspection.biz.CircuitBiz;
import com.accp.routinglnspection.dao.CircuitDao;
import com.accp.routinglnspection.entity.Circuit;
import com.accp.routinglnspection.entity.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("circuitBiz")
public class CircuitBizImpl implements CircuitBiz {
    @Resource
    private CircuitDao circuitDao;

    public Pager<Circuit> queryPager(int pageNo, int pageSize, String cNumber, int cState) {
        Pager<Circuit> pager = new Pager<Circuit>();
        pager.setPageNo(pageNo);
        pager.setPageSize(pageSize);
        pager.setTotalRows(circuitDao.queryCircuitRows(cNumber,cState));
        pager.setTotalPage( (pager.getTotalRows() + pageSize-1)/ pageSize);
        int begin = (pageNo-1)*pageSize;
        pager.setDatas(circuitDao.queryPager(begin, pageSize,cNumber,cState));
        return pager;
    }

    public Circuit selId(int id) {
        return circuitDao.selId(id);
    }

    public int addCircuit(Circuit circuit) {
        return circuitDao.addCircuit(circuit);
    }

    public int updateCircuit(Circuit circuit) {
        return circuitDao.updateCircuit(circuit);
    }

    public int delCircuit(int id) {
        return circuitDao.delCircuit(id);
    }


}
