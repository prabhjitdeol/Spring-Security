package com.SpringSecurity;

import java.util.Arrays;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;


@SuppressWarnings({ "serial" })
public class SecurityUser extends org.springframework.security.core.userdetails.User {

    private User user;

    public SecurityUser(User user) {
        super(user.getUserName(), user.getPassword(), true, true, true, true, Arrays.asList(new GrantedAuthority[]{new SimpleGrantedAuthority("ROLE_USER")}));
        this.user = user;
    }

    public User getUser() {
        return user;
    }

}
