package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.Flaw;

import java.util.List;

public interface FlawDao {
    /**
     * 缺陷表查询
     * @return
     */
    List<Flaw> queryFlaw();


}
