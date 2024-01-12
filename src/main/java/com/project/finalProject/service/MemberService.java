package com.project.finalProject.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.finalProject.dao.MemberDao;
import com.project.finalProject.dto.MemberDto;
import com.project.finalProject.runtimeEx.DbException;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberService {

	@Autowired
	MemberDao memberDao;

	public HashMap<String, String> login(MemberDto memberDto) {
		HashMap<String, String> mMap = new HashMap<>();

		MemberDto mDto = memberDao.login(memberDto);

		if (mDto != null) {

			mMap.put("msg", "로그인 성공");
			mMap.put("userId", mDto.getUserId());
			mMap.put("url", "/main");

		} else {
			mMap.put("msg", "로그인 실패");
			mMap.put("url", "/index");

		}

		return mMap;

	}

	@Transactional
	public HashMap<String, String> join(MemberDto memberDto) throws DbException {
		HashMap<String, String> mMap = new HashMap<>();

		if (memberDao.find(memberDto) == 1) {
			mMap.put("msg", "아이디가 중복되었습니다.");
			throw new DbException();
		}
		if (memberDao.join(memberDto) == 1) {
			mMap.put("msg", "회원가입 성공");

			if (memberDto.getUserId().equals("") || memberDto.getUserPw().equals("")) {
				log.info("======{}", memberDto);
				mMap.put("msg", "아이디 혹은 비밀번호가 공백입니다.");
				throw new DbException();

			}

		}

		return mMap;
	}

}
