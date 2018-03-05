package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.Circuit;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CircuitDao {
           List<Circuit> queryPager(@Param("pageNo") int pageNo,
                                    @Param("pageSize") int pageSize,
                                    @Param("cNumber") String cNumber,
                                    @Param("cState") int cState);



    /**
     * 查询总行数
     * @param
     * @return
     */
    int queryCircuitRows(@Param("cNumber") String cNumber,
                         @Param("cState") int cState);

    Circuit selId(@Param("id") int id);


    List<Circuit> selRod();

    int addCircuit(Circuit circuit);

    int updateCircuit(Circuit circuit);

    int delCircuit(@Param("id") int id);
}
