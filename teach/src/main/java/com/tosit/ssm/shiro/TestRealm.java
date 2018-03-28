package com.tosit.ssm.shiro;

import com.tosit.ssm.entity.User;
import com.tosit.ssm.service.UserService;
import com.tosit.ssm.service.UserServiceImpl;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class TestRealm extends AuthorizingRealm{
    @Autowired
    UserService userService;

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("开始认证");
        String username = (String)authenticationToken.getPrincipal();
//        String password = (String) authenticationToken.getCredentials();
        User user = userService.findsUserByUserName(username);
        if (user == null) {
            // 用户名不存在抛出异常
            throw new UnknownAccountException();
        }
//        if (user.getPassword() != password) {
//            throw new CredentialsException();
//        }

        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(username,user.getPassword(),this.getName());
        return simpleAuthenticationInfo;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }
}
