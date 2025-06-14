package com.infovian.dto;

public class Employee {
	private String name;
	private String id;
	private String designation;
	private double salary;
	private String doj;
	private String email;
	private String address;

	public Employee() {

	}

	public Employee(String name, String id, String designation, double salary, String doj, String email,
			String address) {
		this.name = name;
		this.id = id;
		this.designation = designation;
		this.salary = salary;
		this.doj = doj;
		this.email = email;
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getDoj() {
		return doj;
	}

	public void setDoj(String doj) {
		this.doj = doj;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}