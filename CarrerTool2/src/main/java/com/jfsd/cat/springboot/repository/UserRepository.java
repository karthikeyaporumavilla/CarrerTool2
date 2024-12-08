package com.jfsd.cat.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.jfsd.cat.springboot.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
	@Query("Select u from User u where u.email=?1 and u.password=?2")
	public User checkUserLogin(String email,String password);

}
