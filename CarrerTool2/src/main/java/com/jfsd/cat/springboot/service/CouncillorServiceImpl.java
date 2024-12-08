package com.jfsd.cat.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.cat.springboot.model.Councillor;
import com.jfsd.cat.springboot.repository.CouncillorRepository;

@Service
public class CouncillorServiceImpl implements CouncillorService {
	@Autowired
	  public CouncillorRepository councillorRepository;
	  
	  
	  @Override
	  public Councillor checkThecouncillorLoginFromRepository(String cemail, String cpwd) {
	    // TODO Auto-generated method stub
	    return councillorRepository.checkCouncillorLogin(cemail, cpwd);
	  }
	  @Override
	  public String councillorRegistration(Councillor c) {  
	    councillorRepository.save(c);
	    return "Councillor Added Succesfully";
	  }



}
