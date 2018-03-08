package com.accp.routinglnspection.biz.impl;

import com.accp.routinglnspection.biz.RoleBiz;
import com.accp.routinglnspection.dao.RoleDao;
import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.Role;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("roleBiz")
public class RoleBizImpl implements RoleBiz {
    @Resource
    private RoleDao roleDao;


    public List<Role> cha() {
        return roleDao.cha();
    }

    public Pager<Role> queryRole(int offset, int pageSize, String rName, int rState) {
        Pager<Role> pager = new Pager<Role>();
        pager.setPageNo(offset);
        pager.setPageSize(pageSize);

        pager.setTotalRows(roleDao.queryProjectinfosCount(rState));
        pager.setTotalPage( (pager.getTotalRows()+pageSize-1)/pageSize);
        pager.setDatas(roleDao.queryRole((offset-1)*pageSize,pageSize,rName,rState));
        return pager;
    }

    public Role queryRoleId(int id) {
        return roleDao.queryRoleId(id);
    }

    public int updateRole(Role role) {
        return roleDao.updateRole(role);
    }

    public int addrole(Role role) {
        return roleDao.addrole(role);
    }

    public int deleteRole(int id) { return roleDao.deleteRole(id); }

}
