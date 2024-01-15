package com.project.finalProject.kdgController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.finalProject.service.ChampionService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class ChampionRestController {
	
	@Autowired
	ChampionService cs;
	

	@PostMapping("/kdg/search")
	public void search(String searchChamp) {
		
		log.info("======================== searchChamp : {}",searchChamp);
		
//		List<HashMap<String,String>> list = cs.search(chamionDto);
//		
//		return list;
	}
	
}
