package com.cg.service;

import java.util.List;
import java.util.Map;

import com.cg.entity.Question;

public interface IQuizSer {

	public List<Question> getQuestions();
	public int getScore(Map<String,String> amap);
}
