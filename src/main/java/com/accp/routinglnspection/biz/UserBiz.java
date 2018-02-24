package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserBiz {
    User Login(@Param("account")String account, @Param("password")String password);
}
