package com.yolo.dao;

import java.util.List;
import java.util.Map;

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
	//회원 탈퇴 처리
	public void deleteMember(String id);
	//회원 탈퇴를 하기 위한 비밀번호 체크
	public int checkPassword(Map<String, String> map);
	//아이디 중복 확인
	public int idCheckCnt(String id);
}
