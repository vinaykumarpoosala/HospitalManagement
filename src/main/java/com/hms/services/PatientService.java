package com.hms.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hms.beans.Diagnostic;
import com.hms.beans.Medicine;
import com.hms.beans.Patient;
import com.hms.repositories.PatientRepository;

@Service
public class PatientService {

	@Autowired
	PatientRepository repository;

	public Patient addPatient(Patient patient) {
		patient.setStatus("active");
		return repository.save(patient);
	}

	public Patient searchPatientById(Long id) {
		Patient patient = null;
		Optional<Patient> optinalEntity = repository.findById(id);
		if (optinalEntity.isPresent()) {

			patient = optinalEntity.get();
		}
		return patient;
	}

	public Patient updatePatient(Patient patient) {

		Patient p = repository.save(patient);
		System.err.println(p);
		return p;

	}

	public void deletePatient(@Valid Patient patient) {
		repository.delete(patient);

	}

	public void addMedicine(String id, Medicine medicine) {
		Patient patient = searchPatientById(Long.parseLong(id));

		patient.getMedicines().add(medicine);

		repository.save(patient);

	}

	public void addTest(String id, Diagnostic diagnostic) {

		Patient patient = searchPatientById(Long.parseLong(id));

		patient.getTests().add(diagnostic);

		repository.save(patient);

	}

	public List<Patient> findAllActivePatients() {
		List<Patient> activePatients = new ArrayList<>();
		List<Patient> patients = (List<Patient>) repository.findAll();
		System.out.println("in findall method");
		System.out.println(patients);
		for(Patient patient:patients)
		{
			System.out.println(patient);
			System.out.println("in for loop");
			if(patient.getStatus()!=null)
			{
			if(patient.getStatus().equalsIgnoreCase("active"))
			{
				System.out.println("in if condition");
				activePatients.add(patient);
			}
			}
		}
		return activePatients;
	}

}
