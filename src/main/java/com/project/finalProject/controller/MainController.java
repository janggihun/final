package com.project.finalProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.project.finalProject.service.MainService;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainController {

	@Autowired
	MainService mainService;

	@GetMapping("/")
	public String index() {

		return "index";
	}

	@GetMapping("/main")
	public String main() {
		
		return "main";
	}
	
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/";
	}
	
	@GetMapping("/main/info")
	
	public String mainInfo( String gameName, String tagLine, Model model) {
		
		
		try {
			List<String> mList = mainService.puuId(gameName, tagLine);
			
			List<Object> dataList = mainService.mainInfo(mList);
			model.addAttribute("dataList",dataList);
			model.addAttribute("gamName",gameName);
		}catch (Exception e) {

			model.addAttribute("msg", "조회 결과가 0건 입니다.");
		}	
			
		return "mainDetail2";
	}

	

}
