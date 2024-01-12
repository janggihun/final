package com.project.finalProject.dao;

import org.apache.ibatis.annotations.Mapper;

import com.project.finalProject.dto.MemberDto;

@Mapper
public interface MemberDao {



	MemberDto login(MemberDto memberDto);

	int join(MemberDto memberDto);

	int find(MemberDto memberDto);


}
