package com.hms.controllers;

import com.hms.beans.Patient;
import com.hms.beans.Diagnostic;
import com.hms.beans.Login;
import com.hms.beans.Medicine;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.Arrays;
import java.util.List;

@ControllerAdvice
public class DefaultModelAttributeController {

	@ModelAttribute("newPatient")
	public Patient getDefaultPatient()
	{
		return new Patient();
	}

   

    @ModelAttribute("login")
    public Login getDefaultLogin(){
        return new Login();
    }
    
    
    @ModelAttribute("medicine")
    public Medicine getDefaultMedicine()
    {
    	return new Medicine();
    }
    
    @ModelAttribute("diagnostic")
    public Diagnostic getDefaultDiagnostic()
    {
    	return new Diagnostic();
    }
    
    
}
