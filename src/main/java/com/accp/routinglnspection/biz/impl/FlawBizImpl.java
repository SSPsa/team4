package com.accp.routinglnspection.biz.impl;

import com.accp.routinglnspection.biz.FlawBiz;
import com.accp.routinglnspection.dao.FlawDao;
import com.accp.routinglnspection.entity.Flaw;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
<<<<<<< Updated upstream

@Service("flawBiz")
public class FlawBizImpl implements FlawBiz {
    @Resource
    private FlawDao flawDao;
    public List<Flaw> queryFlaw() {
        return flawDao.queryFlaw();
=======
@Service
public class FlawBizImpl implements FlawBiz{
    @Resource(name = "flawDao")
    private FlawDao flawDao;
    public List<Flaw> queryFlawList() {
        return flawDao.queryFlawList();
>>>>>>> Stashed changes
    }
}
