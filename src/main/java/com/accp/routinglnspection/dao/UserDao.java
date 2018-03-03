package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    User Login(@Param("account")String account, @Param("password")String password);

}
