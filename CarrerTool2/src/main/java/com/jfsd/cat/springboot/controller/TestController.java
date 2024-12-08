package com.jfsd.cat.springboot.controller;

import com.jfsd.cat.springboot.model.TestResponse;
import com.jfsd.cat.springboot.service.TestResponseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/test")
public class TestController {

    @Autowired
    private TestResponseService testResponseService;

    // Endpoint to get all test responses
    @GetMapping("/getAllResponses")
    public List<TestResponse> getAllResponses() {
        return testResponseService.getAllTestResponses();
    }

    // Endpoint to submit the English test responses
    @PostMapping("/submitEnglishTest")
    public ResponseEntity<String> submitTest(@RequestBody TestResponse testResponse) {
        try {
            testResponseService.saveTestResponse(testResponse);
            return ResponseEntity.ok("Test submitted successfully!");
        } catch (Exception e) {
            return ResponseEntity.status(500).body("Error submitting test: " + e.getMessage());
        }
    }
}
