package com.project.finalProject.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.finalProject.dto.PostDto;
import com.project.finalProject.service.MainService;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class RestMainController {
	@Autowired
	MainService mainService;
	
	//비동기처리시
	@PostMapping("/main/info") //소환사 이름검색 << 추후 이걸로 로그인 대신받기도 가능
	public HashMap<String, Object> mainInfo(PostDto postDto, Model model) {
		log.info("gameName :{}",postDto);
		
		try {
			List<String> mList = mainService.puuId(postDto.getGameName(), postDto.getTagLine());
			
			
			return mainService.mainInfo(mList);
		}catch (Exception e) {
			HashMap<String, Object> mMap = new HashMap<>();
			mMap.put("msg","조회 결과가 0건 입니다.");
			return mMap;
		}	
			
		
	}
}
