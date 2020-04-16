package com.cg.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cg.service.IQuizSer;

@Controller
public class QuizController {
	@Autowired
	private IQuizSer ser;
	
	@RequestMapping("StartQuiz.htm")
public String displayQuizform(Model model) {
		model.addAttribute("qlist",ser.getQuestions());
	return "Quizfrm";
	}
	@RequestMapping(value="finishquiz.htm",method = RequestMethod.POST)
	public String result(@RequestBody(required = false) MultiValueMap<String, String> formData,
			HttpServletRequest request, Model model) {
		if(formData!=null) {
		Map<String,String> amap=new HashMap<>();
		for(String pname:formData.keySet()) {
			amap.put(pname,request.getParameter(pname));
			
		}
		model.addAttribute("score", ser.getScore(amap));
		}
		else
		{
			model.addAttribute("score",0);
		}
		return "Quizview";
	}

}
