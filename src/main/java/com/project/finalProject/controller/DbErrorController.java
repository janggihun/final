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
		String error = ex.getMessage();
		redirectAttributes.addFlashAttribute("error",error);
		log.info("====err : {}",error);
		return "redirect:/";
	}
}
