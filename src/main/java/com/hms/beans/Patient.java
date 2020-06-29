package com.hms.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
public class Patient {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@Column(name = "SSNID")
	private String ssnId;

	@Size(min = 6, message = "size should be less than 6 characters")
	@Column(name = "NAME")

	private String name;

	@Column(name = "AGE")
	private String age;

	@Column(name = "DATEOFADMISSION")
	private String dateoFAdmission;

	@Column(name = "TYPEOFBED")

	private String typeOfBed;

	@Column(name = "ADDRESS")

	private String address;

	@Column(name = "STATE")

	private String state;

	@Column(name = "CITY")

	private String city;

	@ElementCollection
	@LazyCollection(LazyCollectionOption.FALSE)

	private List<Medicine> medicines = new ArrayList<>();

	@ElementCollection
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<Diagnostic> tests = new ArrayList<>();

	@Column(name = "STATUS")
	private String status;

	private int billPayed;

	private String dischargedDate;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getSsnId() {
		return ssnId;
	}

	public void setSsnId(String ssnId) {
		this.ssnId = ssnId;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getDateoFAdmission() {
		return this.dateoFAdmission;
	}

	public void setDateoFAdmission(String dateoFAdmission) {
		this.dateoFAdmission = dateoFAdmission;
	}

	public String getTypeOfBed() {
		return typeOfBed;
	}

	public void setTypeOfBed(String typeOfBed) {
		this.typeOfBed = typeOfBed;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Medicine> getMedicines() {
		return medicines;
	}

	public void setMedicines(List<Medicine> medicines) {
		this.medicines = medicines;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<Diagnostic> getTests() {
		return tests;
	}

	public void setTests(List<Diagnostic> tests) {
		this.tests = tests;
	}

	public void setBillPaid(int bill) {
		this.billPayed = bill;

	}

	public int getBillPaid() {
		return this.billPayed;
	}

	public void setDischargedDate(String string) {
		this.dischargedDate = string;

	}

	public String getDischargedDate() {
		return this.dischargedDate;

	}

	@Override
	public String toString() {
		return "Patient [id=" + id + ", ssnId=" + ssnId + ", name=" + name + ", age=" + age + ", dateoFAdmission="
				+ dateoFAdmission + ", typeOfBed=" + typeOfBed + ", address=" + address + ", state=" + state + ", city="
				+ city + ", medicines=" + medicines + ", tests=" + tests + ", status=" + status + ", billPayed="
				+ billPayed + ", dischargedDate=" + dischargedDate + "]";
	}

	
}

