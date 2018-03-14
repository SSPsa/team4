package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.FlawType;
import com.accp.routinglnspection.entity.Pager;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FlawTypeBiz {
    Pager<FlawType> queryPager(int pageNo,
                               int pageSize
    );
    boolean addflaw(FlawType flawType);

    List<FlawType> cha();

    int DelType(@Param("id") int id);

    FlawType QueryId(@Param("id") int id);

    int updateFlaw(FlawType flawType);



}
