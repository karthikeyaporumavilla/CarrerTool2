package com.jfsd.cat.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jfsd.cat.springboot.model.Admin;
import com.jfsd.cat.springboot.model.Councillor;
import com.jfsd.cat.springboot.model.User;
import com.jfsd.cat.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
  
    @Autowired
    private AdminService adminService;
    
    @GetMapping("adminlogin")
       public ModelAndView adminlogin()
       {
         ModelAndView mv = new ModelAndView();
         mv.setViewName("adminLogin");
         return mv;
       }
    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request) {

        ModelAndView mv = new ModelAndView();
        
        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");
        
        Admin admin = adminService.checkTheAdminLoginFromRepository(auname, apwd);
        
        if (admin != null) {
            mv.setViewName("adminHome");
            
            // Get the required data
            Long councillorCount = adminService.councillorCount();
            Long userCount = adminService.userCount();
            
            // Set the data to be passed to the JSP
            mv.addObject("councillorCount", councillorCount);
            mv.addObject("userCount", userCount);
        } else {
            mv.setViewName("adminloginfail");
            mv.addObject("message", "Login Fail");
        }
        
        return mv;
    }

    
    
    @GetMapping("adminhome")
    public ModelAndView adminhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminHome");

        // Get data from the service layer
        Long councillorCount = adminService.councillorCount();
        Long userCount = adminService.userCount();
        // Assuming this method returns a list of councillors

        // Set the data to be passed to the JSP
        mv.addObject("councillorCount", councillorCount);
        mv.addObject("userCount", userCount);
         // Adding the list of councillors to the model

        return mv;
    }

    
       @GetMapping("adminlogout")
       public ModelAndView adminlogout()
       {
         ModelAndView mv = new ModelAndView();
         mv.setViewName("adminLogin");
         return mv;
       }
       @GetMapping("viewallusers")
       public ModelAndView viewAllUsers() {
           ModelAndView mv = new ModelAndView();
           List<User> userList = adminService.viewAllUsers();
           mv.setViewName("viewAllUsers");
           mv.addObject("userList", userList);
           
           Long userCount = adminService.userCount();
           mv.addObject("userCount", userCount);
           
           return mv;
       }
       @GetMapping("viewallcouncillors")
       public ModelAndView viewAllCouncillors() {
           ModelAndView mv = new ModelAndView();
           List<Councillor> councillorList = adminService.viewAllCouncillors();
           mv.setViewName("viewAllCouncillors");
           mv.addObject("councillorList", councillorList);
           Long councillorCount = adminService.councillorCount();
           mv.addObject("councillorCount", councillorCount);
           
           return mv;
       }
       @GetMapping("deleteuser")
       public ModelAndView deleteUser() {
           ModelAndView mv = new ModelAndView();
           List<User> userList = adminService.viewAllUsers();
           mv.setViewName("deleteUser");
           mv.addObject("userList", userList);
           return mv;
       }

       @GetMapping("deleteUser")
       public String deleteUserOperation(@RequestParam("id") int uid) {
           adminService.deleteUser(uid);
           return "redirect:/deleteuser";
       }
       @GetMapping("deletecouncillor")
       public ModelAndView deleteCouncillor() {
           ModelAndView mv = new ModelAndView();
           List<Councillor> councillorList = adminService.viewAllCouncillors();
           mv.setViewName("deleteCouncillor");
           mv.addObject("councillorList", councillorList);
           return mv;
       }

       @GetMapping("deleteCouncillor")
       public String deleteCouncillorOperation(@RequestParam("id") int cid) {
           adminService.deleteCouncillor(cid);
           return "redirect:/deletecouncillor";
       }
       @GetMapping("updatecouncillorstatus")
       public ModelAndView updateCouncillorStatus() {
           ModelAndView mv = new ModelAndView();
           List<Councillor> councillorList = adminService.viewAllCouncillors();
           mv.setViewName("updateCouncillorStatus");
           mv.addObject("councillorList", councillorList);
           return mv;
       }

       @GetMapping("updateCouncillorStatus")
       public String updateCouncillorStatus(@RequestParam("id") int cid, @RequestParam("status") String status) {
           adminService.updateCouncillorStatus(status, cid);
           return "redirect:/updatecouncillorstatus";
       }

}
