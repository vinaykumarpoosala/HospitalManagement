package com.hms.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {
	@GetMapping("/home")
	public String goHome()
	{
		System.out.println("in home controller");
		return "index";
	}
	
	@GetMapping("/goToLogin")
	public String goToLogin()
	{
		System.out.println("in go to login");
		return "login";
	}
	
	@GetMapping("/goToSearch")
	public String goToSearch()
	{
		System.out.println("in search gotoSearch");
		return "search";
	}
	
	@GetMapping("/goToRegistration")
	public String goToRegisterUser()
	{
		System.out.println("in go to registration");
		return "register";
	}
	
	@GetMapping("/goToUpdate")
	public String goToUpadtePatient()
	{
		System.out.println("in go to update patient");
		return "updatePatient";
	}
	
	@GetMapping("/goToDelete")
	public String goToDeletePatient()
	{
		System.out.println("in go to update patient");
		return "deletePatient";
	}
	
	
}
