package com.jfsd.cat.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jfsd.cat.springboot.model.Admin;
import com.jfsd.cat.springboot.model.User;
import com.jfsd.cat.springboot.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class UserController {
	
	@Autowired
	public UserService userService;
    
    @GetMapping("userlogin")
       public ModelAndView userlogin()
       {
         ModelAndView mv = new ModelAndView();
         mv.setViewName("userLogin");
         return mv;
       }
    @GetMapping("userreg")
    public ModelAndView userreg() {
        ModelAndView mv = new ModelAndView();
          mv.setViewName("userReg");
          return mv;
    }
    
    @PostMapping("insertuser")
    public ModelAndView insertuser(HttpServletRequest request)
    {
     String name = request.getParameter("uname");
     String gender = request.getParameter("ugender");
     String dob = request.getParameter("udob");
     String email = request.getParameter("uemail");
     String password = request.getParameter("upwd");
     String contact = request.getParameter("ucontact");
     
       User u = new User();
       u.setName(name);
       u.setGender(gender);
       u.setDateofbirth(dob);
       u.setEmail(email);
       u.setPassword(password);
       u.setContact(contact);
       
       String msg = userService.UserRegistration(u);
       
       ModelAndView mv = new ModelAndView("userRegSuccess");
       mv.addObject("message", msg);
     
       return mv;
    }
    @PostMapping("checkuserlogin")
    public ModelAndView checkuserlogin(HttpServletRequest request)
       {
         
         ModelAndView mv = new ModelAndView();

         String uemail = request.getParameter("uemail");
         String upwd = request.getParameter("upwd");
         
         User user = userService.checkTheUserLoginFromRepository(uemail, upwd);
         
           if(user != null) {
            mv.setViewName("userHome");            
           }
           else {
             mv.setViewName("userloginfail");
             mv.addObject("message", "Login Fail");
           }
           return mv;
       }
    
    
       @GetMapping("userhome")
          public ModelAndView userhome()
          {
            ModelAndView mv = new ModelAndView();
            mv.setViewName("userHome");
            return mv;
          }
       @GetMapping("testpage")
       public ModelAndView testpage() {
    	   ModelAndView mv = new ModelAndView();
    	   mv.setViewName("testpage");
    	   return mv;
       }
       @GetMapping("userlogout")
       public ModelAndView userlogout()
       {
         ModelAndView mv = new ModelAndView();
         mv.setViewName("userLogin");
         return mv;
       }
}
