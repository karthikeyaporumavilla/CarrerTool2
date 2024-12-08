package com.jfsd.cat.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.jfsd.cat.springboot.model.TestResponse;
import com.jfsd.cat.springboot.repository.TestResponseRepository;
import java.util.List;

@Service
public class TestResponseService {

    @Autowired
    private TestResponseRepository testResponseRepository;

    // Method to save a test response
    public String saveTestResponse(TestResponse response) {
        testResponseRepository.save(response);
        return "Test response saved successfully!";
    }

    // Method to get all test responses
    public List<TestResponse> getAllTestResponses() {
        return testResponseRepository.findAll();
    }
}
