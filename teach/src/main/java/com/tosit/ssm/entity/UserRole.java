package com.tosit.ssm.entity;

import javax.management.relation.Role;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class UserRole extends User{
    private List<SysRole> roles;

    public List<SysRole> getRoles() {
        return roles;
    }

    public void setRoles(List<SysRole> roles) {
        this.roles = roles;
    }

    public Set<String> getRolesName(){
        List<SysRole> roles=getRoles();
        Set<String> set=new HashSet<String>();
        for (SysRole role : roles) {
            set.add(role.getName());
        }
        return set;
    }
}
