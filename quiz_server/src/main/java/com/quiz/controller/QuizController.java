package com.quiz.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.dto.QuizDto;

@RestController
@RequestMapping("/quiz")
@CrossOrigin("*")
public class QuizController {
	
	@GetMapping("/getQuizs")
	public ResponseEntity<Object> getQuizs() {
		List<QuizDto> quizDtoList = new ArrayList<>();
		quizDtoList.add(new QuizDto("강아지 이름은?", "초롱이/처렁이/지렁이/미링이", 0));
		quizDtoList.add(new QuizDto("내 키는?", "180/178/176/175", 1));
		quizDtoList.add(new QuizDto("지금 공부하는 것은?", "도커/플러터/리액트/스프링", 1));
		quizDtoList.add(new QuizDto("내가 먹고 싶은 것은?", "짜파게티/삼겹살/파스타/치킨", 2));
		quizDtoList.add(new QuizDto("내가 일주일에 재택하는 횟수는?", "1/2/3/4", 2));
		quizDtoList.add(new QuizDto("나는 언제 놀러가고 싶은가?", "항상/운좋은날/안가고싶음/가끔", 0));
		
		List<QuizDto> resQuizDtoList = new ArrayList<>();
		for(int i=0; i<3; i++) {
			resQuizDtoList.add(quizDtoList.get(new Random().nextInt(quizDtoList.size())));
		}
		
		System.out.println(resQuizDtoList);
		
		return new ResponseEntity<Object>(resQuizDtoList, HttpStatus.OK);
	}
}
