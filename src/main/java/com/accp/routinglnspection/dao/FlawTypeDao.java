package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.FlawType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FlawTypeDao {
    //分页
    List<FlawType> queryPager(@Param("pageNo") int pageNo,
                              @Param("pageSize") int pageSize
    );
    /**
     * 查询总行数
     *
     */
    int queryFlawTypeRows();

    //新增
    int addflaw(FlawType flawType);

    List<FlawType> cha();
    //删除
    int DelType(@Param("id") int id);

    //修改前查询单个id
    FlawType QueryId(@Param("id") int id);

    //修改
    int updateFlaw(FlawType flawType);

}
