package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserBiz {
    User Login(@Param("account")String account, @Param("password")String password);
    List<User> Query();
    boolean adduser(User u);
    int DelUser(@Param("id") int id);
    User QueryId(@Param("id") int id);
    int updateuser(User user);
    //用户分页
    Pager<User> queryPager(int offset,
                           int pageSize,
                           String uName,
                           int ustate );

    //    查询待选消缺员
    List<User> queryToBeSelectedDefect();
    //    查询已选消缺员
    List<User> querySelectedDefect();
}
