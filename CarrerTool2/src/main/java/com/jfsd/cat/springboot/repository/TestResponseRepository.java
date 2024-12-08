package com.jfsd.cat.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jfsd.cat.springboot.model.TestResponse;

public interface TestResponseRepository extends JpaRepository<TestResponse, Long> {
}
