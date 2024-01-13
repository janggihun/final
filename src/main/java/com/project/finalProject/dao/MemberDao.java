package com.project.finalProject.dao;

import org.apache.ibatis.annotations.Mapper;

import com.project.finalProject.dto.MemberDto;
import com.project.finalProject.dto.PaymentDto;

@Mapper
public interface MemberDao {



	MemberDto login(MemberDto memberDto);

	int join(MemberDto memberDto);

	int find(MemberDto memberDto);

	int payDbSave(PaymentDto paymentDto);

	MemberDto main(MemberDto memberDto);

	int updatePoint(PaymentDto paymentDto);


}
