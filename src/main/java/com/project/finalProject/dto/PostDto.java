package com.project.finalProject.dto;

import java.util.List;

import org.json.JSONObject;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostDto {
	private String puuid;
	private String gameName;
	private String tagLine;
	private String matchId;
	private JSONObject matches;
	private JSONObject timeline;
	private List<PostDto> gameId;

}