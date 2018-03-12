package com.accp.routinglnspection.biz.impl;

import com.accp.routinglnspection.biz.UserBiz;
import com.accp.routinglnspection.dao.UserDao;
import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userBiz")
public class UserBizImpl implements UserBiz {
    @Resource
    private UserDao userDao;
    public User Login(String account, String password) {
        return userDao.Login(account,password);
    }

    public List<User> Query() {
        return userDao.Query();
    }

    public boolean adduser(User u) {
        return userDao.adduser(u)>0;
    }

    public int DelUser(int id) {
        return userDao.DelUser(id);
    }

    public User QueryId(int id) {
        return userDao.QueryId(id);
    }

    public int updateuser(User user) {
        return userDao.updateuser(user);
    }

    public Pager<User> queryPager(int offset, int pageSize, String uNmae, int ustate) {
        Pager<User> pager = new Pager<User>();
        pager.setPageNo(offset);
        pager.setPageSize(pageSize);

        pager.setTotalRows(userDao.queryhang(ustate));
        pager.setTotalPage( (pager.getTotalRows() + pageSize-1)/ pageSize);
        pager.setDatas(userDao.queryPager((offset-1)*pageSize,pageSize,uNmae,ustate));
        return pager;
    }

//    待选消缺员
    public List<User> queryToBeSelectedDefect() {
        return userDao.queryToBeSelectedDefect();
    }
//已选消缺员
    public List<User> querySelectedDefect() {
        return userDao.querySelectedDefect();
    }


}
