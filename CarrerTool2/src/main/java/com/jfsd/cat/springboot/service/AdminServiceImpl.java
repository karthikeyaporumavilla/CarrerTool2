package com.jfsd.cat.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.cat.springboot.model.Admin;
import com.jfsd.cat.springboot.model.Councillor;
import com.jfsd.cat.springboot.model.User;
import com.jfsd.cat.springboot.repository.AdminRepository;
import com.jfsd.cat.springboot.repository.CouncillorRepository;
import com.jfsd.cat.springboot.repository.UserRepository;

@Service
public class AdminServiceImpl implements AdminService {
  
  @Autowired
  public AdminRepository adminRepository;
  
  @Autowired
  public UserRepository userRepository;
  
  @Autowired
  public CouncillorRepository councillorRepository;

  //for aditya it is . ahowing
  @Override
  public Admin checkTheAdminLoginFromRepository(String auname, String apwd) {
    return adminRepository.checkAdminLogin(auname, apwd);
  }
  
  ///-----tele
  
  
  ////user
  
  @Override
  public List<User> viewAllUsers() {
      return userRepository.findAll();
  }

  @Override
  public String deleteUser(int uid) {
      userRepository.deleteById(uid);
      return "User Deleted Successfully";
  }

  @Override
  public User displayUserById(int uid) {
      return userRepository.findById(uid).get();
  }

  @Override
  public long userCount() {
      return userRepository.count();
  }
  
  
  
  
  //councillor
  
  public List<Councillor> viewAllCouncillors() {
      return councillorRepository.findAll();
  }

  @Override
  public String deleteCouncillor(int cid) {
      councillorRepository.deleteById(cid);
      return "Councillor Deleted Successfully";
  }

  @Override
  public Councillor displayCouncillorById(int cid) {
      return councillorRepository.findById(cid).get();
  }

  @Override
  public long councillorCount() {
      return councillorRepository.count();
  }

  @Override
  public String updateCouncillorStatus(String status, int cid) {
      councillorRepository.updateCouncillorStatus(status, cid);
      return "Councillor Status Updated Successfully";
  }

}