package com.project.finalProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

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
	
	@PostMapping("/main/info") //소환사 이름검색 << 추후 이걸로 로그인 대신받기도 가능
	public String mainInfo(PostDto postDto, Model model) {
		log.info("gameName :{}",postDto);
		
		try {
			List<String> mList = mainService.puuId(postDto.getGameName(), postDto.getTagLine());
			
			List<Object> dataList = mainService.mainInfo(mList);
			model.addAttribute("dataList",dataList);
			model.addAttribute("gamName",postDto.getGameName());
		}catch (Exception e) {

			model.addAttribute("msg", "조회 결과가 0건 입니다.");
		}	
			
		return "info";
	}

	

}
