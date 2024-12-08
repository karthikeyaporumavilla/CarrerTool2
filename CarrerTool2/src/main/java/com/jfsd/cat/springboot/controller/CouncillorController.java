package com.jfsd.cat.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jfsd.cat.springboot.model.Councillor;
import com.jfsd.cat.springboot.service.CouncillorService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CouncillorController {

  
  @Autowired
  public CouncillorService councillorService;
    
  @GetMapping("councillorlogin")
  public ModelAndView councillorlogin()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("councillorLogin");
    return mv;
  }
    
    @GetMapping("councillorreg")
    public ModelAndView empreg() {
        ModelAndView mv = new ModelAndView();
          mv.setViewName("councillorReg");
          return mv;
    }

    @PostMapping("insertcouncillor")
    public ModelAndView insertcouncillor(HttpServletRequest request)
    {
      String name = request.getParameter("cname");
     String gender = request.getParameter("cgender");
     String dob = request.getParameter("cdob");
     String email = request.getParameter("cemail");
     String password = request.getParameter("cpwd");
     String contact = request.getParameter("ccontact");
     String status = "Registered";
     
       Councillor c = new Councillor();
       c.setName(name);
       c.setGender(gender);
       c.setDateofbirth(dob);
       c.setEmail(email);
       c.setPassword(password);
       c.setContact(contact);
       c.setStatus(status);
       
       String msg = councillorService.councillorRegistration(c);
       
       ModelAndView mv = new ModelAndView("councillorRegSuccess");
       mv.addObject("message", msg);
     
       return mv;

    }
    
    @PostMapping("checkcouncillorlogin")
    public ModelAndView checkcouncillorlogin(HttpServletRequest request)
       {
         
         ModelAndView mv = new ModelAndView();

         String cemail = request.getParameter("cemail");
         String cpwd = request.getParameter("cpwd");
         
         Councillor councillor = councillorService.checkThecouncillorLoginFromRepository(cemail, cpwd);
         
           if(councillor != null) {
            mv.setViewName("councillorHome");          
            
           }
           else {
             mv.setViewName("councillorloginfail");
             mv.addObject("message", "Login Fail");
           }
           return mv;
       }
    
    
    @GetMapping("councillorhome")
      public ModelAndView councillorhome()
      {
    	
    	
        ModelAndView mv = new ModelAndView();
        mv.setViewName("councillorHome");
        
       

        return mv;
      }
   @GetMapping("councillorlogout")
   public ModelAndView councillorlogout()
   {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("councillorLogin");
     return mv;
   }
   @GetMapping("testresults")
   public ModelAndView testresults()
   {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("testresults");
     return mv;
   }
}


