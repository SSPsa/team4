package com.accp.routinglnspection.dao;

import com.accp.routinglnspection.entity.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleDao {


    /**
     * 查询当前页数据
     * @param offset
     * @param pageSize
     * @param status
     * @return
     *
     */
    List<Role> cha();

    List<Role> queryRole(@Param("offset") int offset,
                         @Param("pageSize") int pageSize,
                         @Param("rName") String rName,
                         @Param("rState") int rState);


    /**
     * 查询总行数
     * @param status
     * @return
     */
    int queryProjectinfosCount(@Param("status") int status);

    /**
     * 根据id查询单个进行修改
     * @param id
     * @return
     */
    Role queryRoleId(@Param("id") int id);

    /**
     * 修改
     * @param role
     * @return
     */
    int updateRole(Role role);

    /**
     * 角色添加
     * @param role
     * @return
     */
    int addrole(Role role);

    /**
     * 角色删除
     * @param id
     * @return
     */
    int deleteRole(@Param("id") int id);
}
