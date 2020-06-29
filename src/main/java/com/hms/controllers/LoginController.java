package com.hms.controllers;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hms.beans.Login;
import com.hms.beans.User;
import com.hms.exceptions.ApplicationException;
import com.hms.repositories.UserRepository;



@Controller
public class LoginController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping("/login")
    public String login(@ModelAttribute("login")Login login ,HttpSession session){
    	
    	System.out.println("login user name"+login.getUsername());
    	
        User user  = userRepository.searchByName(login.getUsername());
        if(user==null){
            throw new ApplicationException("User not found");
        }
        if(user.getPassword().equalsIgnoreCase(login.getPassword()))
        {
        	
        	session.setAttribute("Token", user.getUsername());
        	session.setAttribute("userType", user.getUserType());
        	return "forward:/profile";
        }
        return "login";
    }

    @ExceptionHandler(ApplicationException.class)
    public String handleException(Model model){
        System.out.println("in exception handler of Login Controller");
        model.addAttribute("error","Username Or password incorrect please try again");
        return "error";
    }
}
