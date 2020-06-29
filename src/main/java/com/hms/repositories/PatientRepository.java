package com.hms.repositories;

import org.springframework.data.repository.CrudRepository;

import com.hms.beans.Patient;

public interface PatientRepository extends CrudRepository<Patient, Long> {

	
}
