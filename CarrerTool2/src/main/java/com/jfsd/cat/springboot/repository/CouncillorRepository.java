package com.jfsd.cat.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.jfsd.cat.springboot.model.Councillor;

import jakarta.transaction.Transactional;

@Repository
public interface CouncillorRepository extends JpaRepository<Councillor, Integer> {
	@Query("Select c from Councillor c where c.email=?1 and c.password=?2")
	public Councillor checkCouncillorLogin(String email,String password);
	@Query("update Councillor e set e.status=?1 where e.id=?2")
	  @Modifying
	  @Transactional
	  public int  updateCouncillorStatus(String status, int eid);

}
