package com.hms.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LogoutController {
	
	@GetMapping(value="/Logout")
	public String logout(HttpSession session , Model model )
	{
		System.out.println("in logout conroller");
		session.removeAttribute("Token");
		session.removeAttribute("userType");
		session.invalidate();
		System.out.println("forwarding to home");
		return "redirect:home";
		
	}

}
