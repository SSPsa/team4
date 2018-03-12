package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.Flaw;

import java.util.List;

public interface FlawBiz {
    /**
     * 缺陷表查询
     * @return
     */
    List<Flaw> queryFlaw();
}
