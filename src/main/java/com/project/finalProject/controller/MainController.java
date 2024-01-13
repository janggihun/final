package com.project.finalProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.finalProject.dto.PostDto;
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

		return "main";
	}

	@GetMapping("/main")
	public String main() {
		
		return "main";
	}
	
	
	@GetMapping("/logout")
	public String logout(HttpSession session,RedirectAttributes redirectAttributes) {
		session.invalidate();
		redirectAttributes.addFlashAttribute("msg","로그아웃되었습니다.");
		return "redirect:/";
	}
	//동기처리시
//	@PostMapping("/main/info") //소환사 이름검색 << 추후 이걸로 로그인 대신받기도 가능 
//	public String mainInfo(PostDto postDto, Model model) {
//		log.info("gameName :{}",postDto);
//		
//		try {
//			List<String> mList = mainService.puuId(postDto.getGameName(), postDto.getTagLine());
//			
//			List<Object> dataList = mainService.mainInfo(mList);
//			model.addAttribute("dataList",dataList);
//			model.addAttribute("gamName",postDto.getGameName());
//		}catch (Exception e) {
//
//			model.addAttribute("msg", "조회 결과가 0건 입니다.");
//		}	
//			
//		return "info";
//	}
	@GetMapping("/1")
	public String go1() {

		return "1";
	}
	@GetMapping("/2")
	public String go2() {

		return "2";
	}
	@GetMapping("/3")
	public String go3() {

		return "3";
	}
	@GetMapping("/4")
	public String go4() {

		return "4";
	}
	@GetMapping("/5")
	public String go5() {

		return "5";
	}@GetMapping("/6")
	public String go6() {

		return "6";
	}
}
