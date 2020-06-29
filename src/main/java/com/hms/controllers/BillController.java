package com.hms.controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hms.beans.Patient;
import com.hms.services.PatientService;

@Controller
public class BillController {

	@Autowired
	PatientService service;

	@PostMapping(value = "/bilingConfirmed")
	public String confirmbilling(@RequestParam("totalBill") int bill, @RequestParam("patientId") long id, Model model) {
		Patient patient = service.searchPatientById(id);
		patient.setBillPaid(bill);
		Date date = new Date();
		patient.setStatus("Discharged");
		patient.setDischargedDate(date.toString());
		model.addAttribute("message", "money paid successfully and patient status changed to discharge");
		return "profile";
	}
}
