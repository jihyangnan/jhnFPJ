package com.yolo.service.impl;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yolo.controller.MemberController;
import com.yolo.dao.MemberDAO;
import com.yolo.service.MemberService;
import com.yolo.vo.MemberVO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDao;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Override
	 public String login(String id, String password){
        String dbPassword = memberDao.loginIdCheck(id);
        String dbPertype = memberDao.pertypeCheck(id);
        if(dbPassword==null)	//아이디가 존재하지 않은 경우
            return "0";	
        else{	//아이디가 존재한 경우
            if(dbPassword.equals(password)) {	//아이디와 비밀번호가 DB와 일치 할 경우
            	if( logger.isDebugEnabled() ) {
            		logger.debug("성공");
            	}
                return "1";
            }else {	//아이디와 비밀번호가 DB와 불일치 할 경우
            	if( logger.isDebugEnabled() ) {
            		logger.debug("실패");
            	}
            	return "2";
            }
        }
    }
	
	@Override
	@Transactional
	// 로그인한 회원 정보 조회
	public MemberVO viewMember(String id) {
		//이메일 값 구하기
		MemberVO  vo = memberDao.memberInfo(id);
		String[] email_addr = vo.getEmail().split("@");
		if( email_addr.length > 0 ) {
			String email_id = email_addr[0].toString();
			String email_site = email_addr[1].toString();
			vo.setEmail_id(email_id);
			vo.setEmail_site(email_site);
		}
		
		//핸드폰 값 구하기
		String[] phone = vo.getPhone().split("-");
		String phone1 = "";
		String phone2 = "";
		String phone3 = "";
		if(phone.length > 0) {
			phone1 = phone[0].toString();
			phone2 = phone[1].toString();
			phone3 = phone[2].toString();
			vo.setPhone1(phone1);
			vo.setPhone2(phone2);
			vo.setPhone3(phone3);
		}
		
		return vo;
	}
	
	//회원 가입
	@Override
	public void jointMember(MemberVO vo) {
		//생년월일 값 저장
		String year = vo.getYear();
		String month = vo.getMonth();
		String day = vo.getDay();
		Date birth = Date.valueOf(year + "-" + month + "-" + day);
		vo.setBirth(birth);
		//전화번호 값 저장
		String phone1 = vo.getPhone1();
		String phone2 = vo.getPhone2();
		String phone3 = vo.getPhone3();
		String phone = phone1 + "-" + phone2 + "-" + phone3;
		vo.setPhone(phone);
		//이메일 값 저장
		String email_id = vo.getEmail_id();
		String email_site = vo.getEmail_site();
		String email = email_id + "@" + email_site;
		vo.setEmail(email);
		
		String[] trip_style = vo.getTripStyle();
		String tripStyleList = "";
		for (int i = 0; trip_style != null && i < trip_style.length; i++) {
			tripStyleList += trip_style[i];
				if (i < trip_style.length - 1) {
					tripStyleList += ", ";
				}
			}
		vo.setTripStyleList(tripStyleList);
		memberDao.insertMembers(vo);
	}
	
	@Override
	//회원 정보 수정
	public void modifyMember(MemberVO vo, String id) {
		//기존 정보
		vo.setId(id);
		//생년월일 값 저장
		String year = vo.getYear();
		String month = vo.getMonth();
		String day = vo.getDay();
		Date birth = Date.valueOf(year + "-" + month + "-" + day);
		vo.setBirth(birth);
		
		//전화번호 값 저장
		String phone1 = vo.getPhone1();
		String phone2 = vo.getPhone2();
		String phone3 = vo.getPhone3();
		String phone = phone1 + "-" + phone2 + "-" + phone3;
		vo.setPhone(phone);
		
		//이메일 값 저장
		String email_id = vo.getEmail_id();
		String email_site = vo.getEmail_site();
		String email = email_id + "@" + email_site;
		vo.setEmail(email);
		
		String[] trip_style = vo.getTripStyle();
		String tripStyleList = "";
		for (int i = 0; trip_style != null && i < trip_style.length; i++) {
			tripStyleList += trip_style[i];
				if (i < trip_style.length - 1) {
					tripStyleList += ", ";
				}
			}
		vo.setTripStyleList(tripStyleList);
		memberDao.updateMembers(vo);
	}
	
	//회원 탈퇴하기 위한 비밀번호 확인
	public int checkRw(String id, String password) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("password", password);
		int resultCk = memberDao.checkPassword(map);
		return resultCk;
	}
	
	//회원 탈퇴 수행
	public void deleteMember(String id) {
		memberDao.deleteMember(id);
	}
	
	//아이디 중복 확인
	public int idCheck(String id) {
		int cnt = memberDao.idCheckCnt(id);
		return cnt;
	}
}
