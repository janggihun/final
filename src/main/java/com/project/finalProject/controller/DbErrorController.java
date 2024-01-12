package com.project.finalProject.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.project.finalProject.runtimeEx.DbException;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@ControllerAdvice
public class DbErrorController{
	
	@ExceptionHandler(DbException.class)
	public String error() {
		
		log.info("에러통과");
		return "redirect:/";
	}

}
