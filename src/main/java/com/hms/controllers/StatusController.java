package com.hms.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;

import com.hms.beans.Patient;
import com.hms.exceptions.ApplicationException;
import com.hms.services.PatientService;

@Controller
public class StatusController {
	
	@Autowired
	PatientService service;
	
	@GetMapping("/patientsStatus")
	public String getPatientsStatusOfActive(Model model)
	{
		try
		{
		List<Patient> patients = service.findAllActivePatients();
		System.out.println(patients);
		model.addAttribute("patients",patients);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			throw new ApplicationException("No Patients found");
		}
		return "patientsStatus";
	}
	
	@ExceptionHandler(ApplicationException.class)
    public String handleException(Model model){
        System.out.println("in exception handler of Login Controller");
        model.addAttribute("error","No patients found");
        return "noPatientFound";
    }
}
