package com.tranminhvuong.darklock.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.tranminhvuong.darklock.entities.Users;

@Service

public class UserDetailsServiceImpl implements UserDetailsService{
	
	@Autowired UserService userService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Users user = userService.loadUserByUsername(username);
		return user;
	}

}
