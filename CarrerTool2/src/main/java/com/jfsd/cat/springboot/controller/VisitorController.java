package com.jfsd.cat.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class VisitorController {

  @GetMapping("/")
  public ModelAndView visitorHome() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("VisitorHome");
    return mv;
  }
  
}
