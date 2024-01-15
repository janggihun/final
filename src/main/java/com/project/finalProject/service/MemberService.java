package com.project.finalProject.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.finalProject.controller.DbErrorController;
import com.project.finalProject.cuntomEx.CunstomException;
import com.project.finalProject.dao.MemberDao;
import com.project.finalProject.dto.DuoSearchDto;
import com.project.finalProject.dto.MemberDto;
import com.project.finalProject.dto.PaymentDto;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberService {

	@Autowired
	MemberDao memberDao;

	public MemberDto login(MemberDto memberDto) throws CunstomException {

		MemberDto mDto = memberDao.login(memberDto);
		HashMap<String, String> mMap = new HashMap<>();
		if (mDto != null) {
			return mDto;
		} else {

			throw new CunstomException("아이디 혹은 비밀번호가 틀렸습니다.");
		}

	}

	@Transactional
	public MemberDto join(MemberDto memberDto){
		
	
		if (memberDao.find(memberDto) == 1) {
			throw new CunstomException("아이디가 중복되었습니다.");
		}
		if (memberDao.join(memberDto) == 1) {

			if (memberDto.getUserId().equals("") || memberDto.getUserPw().equals("")) {

				throw new CunstomException("아이디 혹은 비밀번호가 공백입니다.");
			}

		}

		return memberDto;
	}
	@Transactional
	public void payDbSave(PaymentDto paymentDto) {
		
		int result1 =memberDao.payDbSave(paymentDto);
		
		int result2 = memberDao.updatePoint(paymentDto);
		
		if(result1 ==0) {
			throw new CunstomException("paymentT 결제 db에러");
		}else if(result2 == 0) {		
			throw new CunstomException("memberT 포인트 db에러");
		}
		
	}

	public MemberDto main(MemberDto memberDto) {
		
		return memberDao.main(memberDto);
		
	}

	public void saveDb(DuoSearchDto duoSearchDto) {
		
		memberDao.saveDb(duoSearchDto);
		
	}

}
