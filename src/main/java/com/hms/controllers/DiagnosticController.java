package com.hms.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hms.beans.Diagnostic;
import com.hms.services.PatientService;

@Controller
public class DiagnosticController {
	
	@Autowired
	PatientService service;
	@RequestMapping(value="addTest" , method=RequestMethod.POST)
	public String addTest(@RequestParam("patientId") String id,@ModelAttribute("diagnostic") Diagnostic diagnostic,HttpSession session)
	{
		
		if(session.getAttribute("Token")==null || session.getAttribute("Token")=="")
			return "home";
	

		System.out.println("in add medicine method");
		System.out.println(id);
		System.out.println(diagnostic);
		
		service.addTest(id,diagnostic);
		return "redirect:search?patientId="+id;
	}
	
}
