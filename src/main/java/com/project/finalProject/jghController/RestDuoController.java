package com.project.finalProject.jghController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.finalProject.dto.DuoSearchDto;
import com.project.finalProject.service.MemberService;

import lombok.extern.slf4j.Slf4j;




@RestController
@Slf4j
public class RestDuoController {

	@Autowired
	MemberService memberService;
	
	@PostMapping("/saveDb")
	public String saveDb(DuoSearchDto duoSearchDto ) {
		
		log.info("==========={}",duoSearchDto);
		memberService.saveDb(duoSearchDto);
		return "";
	}
	
	
	
}
