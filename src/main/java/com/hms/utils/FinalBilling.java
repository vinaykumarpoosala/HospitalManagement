package com.hms.utils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hms.beans.Diagnostic;
import com.hms.beans.Medicine;
import com.hms.beans.Patient;

public final class FinalBilling {

	public static Map<String, Integer> finalBilling(Patient patient) {
		String dateOfAdmission = patient.getDateoFAdmission();
		Map<String, Integer> mapForBilling = new HashMap<>();
		int billForDiagnostics = billForDiagnostics(patient);
		int billForStay = billForStay(patient);
		int billForMedicine = billForMedicine(patient);
		int totalBill = billForDiagnostics+billForStay+billForMedicine;
		mapForBilling.put("noOfDays", DateUtils.getNoOfDaysStayed(dateOfAdmission));
		mapForBilling.put("billForDaignostics", billForDiagnostics);
		mapForBilling.put("billForStay", billForStay);
		mapForBilling.put("billForMedicine", billForMedicine);
		mapForBilling.put("totalBill", totalBill);
		return mapForBilling;
	}

	public static int billForDiagnostics(Patient patient) {
		int totalBillForDiagnostics = 0;
		List<Diagnostic> diagnostics = patient.getTests();
		for (Diagnostic diagnostic : diagnostics) {
			totalBillForDiagnostics += diagnostic.getAmount();
		}
		return totalBillForDiagnostics;
	}

	public static int billForStay(Patient patient) {
		int totalbillForStay = 0;
		String dateOfAdmission = patient.getDateoFAdmission();

		int noOfDaysStayed = DateUtils.getNoOfDaysStayed(dateOfAdmission);

		if (patient.getTypeOfBed().equalsIgnoreCase("single")) {
			totalbillForStay = noOfDaysStayed * 1000;
		}
		if (patient.getTypeOfBed().equalsIgnoreCase("shared")) {
			totalbillForStay = noOfDaysStayed * 450;
		}

		return totalbillForStay;
	}

	public static int billForMedicine(Patient patient) {
		int totalBillForMedicine = 0;
		for (Medicine medicine : patient.getMedicines()) {
			totalBillForMedicine += medicine.getAmount();
		}
		return totalBillForMedicine;
	}

}
