package com.yolo.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.yolo.vo.MemberVO;
@Service
public interface MemberService {
	//로그인 처리
	public String login(String id, String password);
	//로그인한 회원 가입자 유형
	public String pertypeResult(String id);
	// 로그인한 회원 정보 조회
	public MemberVO viewMember(String id);
	//회원 가입
	public void jointMember(MemberVO vo);
	//회원 정보 수정
	public void modifyMember(MemberVO vo, String id);
	//회원 탈퇴를 위한 비밀번호 확인
	public int checkRw(String id, String password);
	//회원 탈퇴 수행
	public void deleteMember(String id);
	//아이디 중복 확인
	public int idCheck(String id);
	//비밀번호 찾기
	public String searchPW(String id, String email);
}
