package com.hms.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class ProfileController {
	
	@PostMapping("/profile")
	public String profile(@SessionAttribute("Token") String token ,Model model)
	{
		System.out.println("session token "+token);
		return "profile";
	}
}
