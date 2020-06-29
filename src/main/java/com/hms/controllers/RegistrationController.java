package com.hms.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hms.beans.Patient;
import com.hms.services.PatientService;

@Controller
public class RegistrationController {

	@Autowired
	PatientService service;

	@RequestMapping(value = "/registeruser", method = RequestMethod.POST)
	public String registerUser(@Valid @ModelAttribute("newPatient") Patient patient, BindingResult result, Model model) {

		if (result.hasErrors()) {
			model.addAttribute("error", "registration failed try again");
			return "register";
		}

		patient.setStatus("active");
		patient = service.addPatient(patient);
		model.addAttribute("message", "patient registered with id " + patient.getId());

		return "profile";
	}
}
