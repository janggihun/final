package com.project.finalProject.jghController;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;




@RestController
@Slf4j
public class RestDuoController {

	@PostMapping("/test")
	public String test() {
		
		log.info("비동기실험");
		
		return "";
	}
	
	
	
}
