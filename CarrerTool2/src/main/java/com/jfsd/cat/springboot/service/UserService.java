package com.jfsd.cat.springboot.service;

import com.jfsd.cat.springboot.model.User;

public interface UserService {
	public User checkTheUserLoginFromRepository(String uemail,String upwd);
	public String UserRegistration(User u);
	

}
