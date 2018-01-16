package com.yolo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.yolo.vo.MemberVO;

@Repository
public interface MemberDAO {
	//로그인 처리
	public String loginIdCheck(String id);
	public String pertypeCheck(String id);
	//로그인한 회원 정보 조회
	public MemberVO memberInfo(String id);
	//회원 가입
	public void insertMembers(MemberVO vo);
	//회원 정보 수정
	public void updateMembers(MemberVO vo);
}
