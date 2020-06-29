package com.hms.controllers;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.hms.beans.Medicine;
import com.hms.exceptions.ApplicationException;
import com.hms.services.PatientService;

@Controller
public class MedicineController {
	@ExceptionHandler(ApplicationException.class)
		public String handleResourceNotFoundException() {
	
	        return "error";
	
	    }
	
	@ExceptionHandler(ApplicationException.class)
    @ResponseStatus(code = HttpStatus.NOT_FOUND)
    public String handleNotFoundException() {
        return "error";
    }
	
	 

	@Autowired
	PatientService service;
	@RequestMapping(value = "/addMedicine",method = RequestMethod.POST)
	public String addMedicine(@RequestParam("patientId") String id ,@ModelAttribute("medicine") Medicine medicine,Model model,HttpSession session)
	{
		if(session.getAttribute("Token")==null || session.getAttribute("Token")=="")
			return "home";
		System.out.println("in add medicine method");
		System.out.println(id);
		System.out.println(medicine);
		
		service.addMedicine(id,medicine);
		return "redirect:search?patientId="+id;
	}
}
