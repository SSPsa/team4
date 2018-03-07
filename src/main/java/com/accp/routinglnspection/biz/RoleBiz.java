package com.accp.routinglnspection.biz;

import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.Role;
import org.apache.ibatis.annotations.Param;

public interface RoleBiz {


    /**
     * 查询当前页数据
     *
     * @param offset
     * @param pageSize
     * @param rName
     * @param rState
     * @return
     */

    Pager<Role> queryRole(@Param("offset") int offset,
                          @Param("pageSize") int pageSize,
                          @Param("rName") String rName,
                          @Param("rState") int rState);

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