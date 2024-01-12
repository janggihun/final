package com.project.finalProject.service;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.finalProject.dto.PostDto;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MainService {

	@Autowired
	WebClientService webClientServiceImpl;

	public List<String> puuId(String gameName, String tagLine) {

		log.info("gameName : {}", gameName);
		
		List<PostDto> iList = new LinkedList<>();

		String puuid = webClientServiceImpl.getPuuId(gameName, tagLine);
		List<String> gList = webClientServiceImpl.getgameid(puuid);

		return gList;

	}

	public List<Object> mainInfo(List<String> mList) {

		// 역직렬화 : 롤 리스트는 Stri 으로 받으며 json으로 들어오는데 그걸 다시 list로 변환해주는 것

		List<Object> dataList = new ArrayList<>();
		for (int i = 0; i < mList.size(); i++) {
			PostDto postDto = new PostDto();
			postDto.setMatchId(mList.get(i));
			postDto.setMatches(webClientServiceImpl.getgameinfo(mList.get(i)));
			postDto.setTimeline(webClientServiceImpl.getgameTimeline(mList.get(i)));

			dataList.add(postDto);
//				log.info("========{}",postDto.getMatches());
		}
		return dataList;
	}
}
