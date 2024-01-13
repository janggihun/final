package com.project.finalProject.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.finalProject.cuntomEx.CunstomException;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@ControllerAdvice
public class DbErrorController{
	
	@ExceptionHandler(CunstomException.class)
	public String error(RedirectAttributes redirectAttributes, Exception ex) {
		
		redirectAttributes.addFlashAttribute("error",ex.getMessage());
//		log.info("====err : {}",ex.getMessage());
		return "redirect:/";
	}
}
