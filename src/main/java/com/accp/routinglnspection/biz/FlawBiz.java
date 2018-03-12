package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.Flaw;

import java.util.List;

public interface FlawBiz {

    List<Flaw> queryFlaw();
    List<Flaw> queryFlawList();
}
