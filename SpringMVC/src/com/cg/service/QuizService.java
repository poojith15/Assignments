package com.cg.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.cg.entity.Question;

public class QuizService implements IQuizSer{
private Map<String,Question> qmap;

//IOC to inject DI
	public void setQmap(Map<String, Question> qmap) {
	this.qmap = qmap;
}


	@Override
	public List<Question> getQuestions() {
		List <Question> lst=new ArrayList<>(qmap.values());
		return lst;
	}


	@Override
	public int getScore(Map<String, String> amap) {
		Set<String>set=amap.keySet();
		int count=0;
		String uans=null;
		Question ques=null;
		for(String qno:set)
		{
			ques=qmap.get(qno);
			uans=amap.get(qno);
			
			if((uans!=null)&&(uans.equals(ques.getAnswer())))++count;
			
		}
		return count;
	}

}
