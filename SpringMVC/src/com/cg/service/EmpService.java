package com.cg.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.entity.Emp;

//@Service
public class EmpService implements IEmpSer{

	//@Autowired
	public Map<Integer,Emp> emap;
	
//ioc ti inject di
	public void setEmap(Map<Integer, Emp> emap) {
		this.emap = emap;
	}


	@Override
	public Emp getEmployee(int eid) {
		// TODO Auto-generated method stub
		return emap.get(eid);
	}
	
}
