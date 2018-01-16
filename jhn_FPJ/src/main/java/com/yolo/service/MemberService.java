package com.yolo.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.yolo.vo.MemberVO;
@Service
public interface MemberService {
	//로그인 처리
	public boolean login(String id, String password);
	// 로그인한 회원 정보 조회
	public MemberVO viewMember(String id);
	//회원 가입
	public void jointMember(MemberVO vo);
	//회원 정보 수정
	public void modifyMember(MemberVO vo, String id);
	public int checkRw(String id, String password);
	public void deleteMember(String id);
}
