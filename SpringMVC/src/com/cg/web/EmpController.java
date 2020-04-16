package com.cg.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cg.entity.Emp;
import com.cg.service.IEmpSer;

@Controller
public class EmpController {
@Autowired
	private IEmpSer ser;
	@RequestMapping("empform.htm")
	public String displayEmpForm() {
		return "Empfrm";
	}
	
	@RequestMapping("search.htm")
	public String processEmpById(@RequestParam("txtsearch")int eid,Model model) {
		Emp emp=ser.getEmployee(eid);
		model.addAttribute("employee",emp);
		return "Empfrm";
	}
}
