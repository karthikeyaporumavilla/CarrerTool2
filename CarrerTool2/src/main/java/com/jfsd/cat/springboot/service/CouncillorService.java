package com.jfsd.cat.springboot.service;

import com.jfsd.cat.springboot.model.Councillor;

public interface CouncillorService {
	public Councillor checkThecouncillorLoginFromRepository(String cemail, String cpwd);
	public String councillorRegistration(Councillor c);
	

}
