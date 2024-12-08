package com.jfsd.cat.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.cat.springboot.model.User;
import com.jfsd.cat.springboot.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	public UserRepository userRepository;
	@Override
	public User checkTheUserLoginFromRepository(String uemail, String upwd) {
		// TODO Auto-generated method stub
		return userRepository.checkUserLogin(uemail, upwd);
	}
	@Override
    public String UserRegistration(User u) {
        userRepository.save(u);
        return "User Added Successfully"; 
    }
	


}
