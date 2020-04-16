package com.cg.entity;

public class Emp {
private int empId;
private String empName;
private double empSal;
private String dept;
public Emp(int empId, String empName, double empSal, String dept) {
	super();
	this.empId = empId;
	this.empName = empName;
	this.empSal = empSal;
	this.dept = dept;
}
public int getEmpId() {
	return empId;
}
public String getEmpName() {
	return empName;
}
public double getEmpSal() {
	return empSal;
}
public String getDept() {
	return dept;
}

}
