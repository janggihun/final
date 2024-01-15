package com.project.finalProject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.finalProject.dao.ChampionDao;
import com.project.finalProject.dto.ChamionDto;

@Service
public class ChampionService {
	
	@Autowired
	ChampionDao cd;

	public List<HashMap<String,String>> champList() {
		
		List<HashMap<String,String>> list = cd.champList();
		return list;
	}

	public List<HashMap<String,String>> search(ChamionDto chamionDto) {
		
		List<HashMap<String,String>> list = cd.search(chamionDto);
		return list;
		
	}
	
}
