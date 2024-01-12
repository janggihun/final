package com.project.finalProject.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.finalProject.dto.MemberDto;
import com.project.finalProject.service.MemberService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	
	////////////////////////////////////////////POST 매핑/////////////////////////////////////////////////

	@PostMapping("/login") // 로그인 구현
	public String login(MemberDto memberDto, HttpSession session, Model model) {
		HashMap<String, String> hMap = memberService.login(memberDto);
		
		String url = hMap.get("url");
		
		session.setAttribute("userId", hMap.get("userId"));
		model.addAttribute("res", hMap);
		
		return url;
		

	}

	@PostMapping("/join") // 회원가입구현
	public String join(MemberDto memberDto, Model model) {

		model.addAttribute("res", memberService.join(memberDto));

		return "/index";
	}

}
