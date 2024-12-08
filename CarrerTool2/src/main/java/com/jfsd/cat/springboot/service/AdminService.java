package com.jfsd.cat.springboot.service;

import java.util.List;

import com.jfsd.cat.springboot.model.Admin;
import com.jfsd.cat.springboot.model.Councillor;
import com.jfsd.cat.springboot.model.User;

public interface AdminService {
	//apwd - admin password
	  public Admin checkTheAdminLoginFromRepository(String auname, String apwd);
	  
	  //copy from mvc sdp
	  
	  public List<User> viewAllUsers();
	  public List<Councillor> viewAllCouncillors();
	  
	  //send tele

	  
	  
	  public String deleteUser(int uid);
	  public User displayUserById(int uid);
	  public long userCount();
	  
	  
	  
	  public String deleteCouncillor(int cid);
	  public Councillor displayCouncillorById(int cid);
	  public long councillorCount();
	  public String updateCouncillorStatus(String status, int cid);
	}
