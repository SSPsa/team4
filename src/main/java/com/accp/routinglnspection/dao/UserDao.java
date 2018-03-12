package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    User Login(@Param("account")String account, @Param("password")String password);
    List<User> Query();  //查询
    int adduser(User u);
    int DelUser(@Param("id") int id);
    User QueryId(@Param("id") int id);//修改前查询单个id
    int updateuser(User user);//修改
    //用户分页
    List<User> queryPager(@Param("offset")int offset,
                          @Param("pageSize") int pageSize,
                          @Param("uName") String uName,
                          @Param("ustate") int ustate);
    //查询总行数
    int queryhang(@Param("status")int status);

//    查询待选消缺员
    List<User> queryToBeSelectedDefect();
//    查询已选消缺员
    List<User> querySelectedDefect();

}
