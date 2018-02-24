package com.accp.routinglnspection.biz.impl;

import com.accp.routinglnspection.biz.UserBiz;
import com.accp.routinglnspection.dao.UserDao;
import com.accp.routinglnspection.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userBiz")
public class UserBizImpl implements UserBiz {
    @Resource
    private UserDao userDao;
    public User Login(String account, String password) {
        return userDao.Login(account,password);
    }
}
