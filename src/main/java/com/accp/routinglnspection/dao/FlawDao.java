package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.Flaw;

import java.util.List;

public interface FlawDao {
    List<Flaw> queryFlaw();
    List<Flaw> queryFlawList();
}
