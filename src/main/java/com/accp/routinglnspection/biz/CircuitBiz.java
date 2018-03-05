package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.Circuit;
import com.accp.routinglnspection.entity.Pager;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CircuitBiz {
    Pager<Circuit> queryPager(int pageNo,
                              int pageSize,
                              String cNumber,
                              int cState);

    Circuit selId(int id);
    List<Circuit> selRod();
    int addCircuit(Circuit circuit);
    int updateCircuit(Circuit circuit);
    int delCircuit(int id);
}
