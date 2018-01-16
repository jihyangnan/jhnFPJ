package com.yolo.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.yolo.dao.MemberDAO;
import com.yolo.service.MemberService;
import com.yolo.vo.MemberVO;

@Controller
public class MemberController  extends HttpServlet{

	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberDAO memberDao;
	static String form  = "mainForm.jsp?contentPage=member/";
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	//로그인 하는 화면 이동
	@RequestMapping(value="loginForm.do", method=RequestMethod.GET)
	public String login(HttpServletRequest request, HttpServletResponse response) {
		return form+"loginForm";
	}
	//회원가입 하는 화면 이동
	@RequestMapping(value="joinForm.do", method=RequestMethod.GET)
	public String join(HttpServletRequest request, HttpServletResponse response) {
		return form+"joinForm";
	}
	
	//로그인 처리 
	@RequestMapping(value="memberLoginAction.do", method=RequestMethod.POST)
	public ModelAndView login(String id, String password, HttpSession session, HttpServletRequest request) throws SQLException{
	        ModelAndView mav = new ModelAndView();
	        boolean result = memberService.login(id, password);
	        String dbPertype = memberDao.pertypeCheck(id);
			 if(result == true){
			    session.setAttribute("sessionID", id);
			    request.setAttribute("perType", dbPertype);
				 mav.setViewName("redirect:/");
			}
			else{
			    mav.setViewName("redirect:loginForm.do");
			    //mav.addObject("msg","fail");
			}
	        return mav;
	}

	//로그 아웃
	@RequestMapping(value="memberLogoutAction.do", method=RequestMethod.GET)
	 public String logout(HttpSession session){
	//      session.invalidate();
      session.removeAttribute("sessionID");
      return "redirect:loginForm.do";
      
	}
	
	//로그인한 회원 정보 조회
	@RequestMapping(value="MemberInfoAction.do", method=RequestMethod.GET)
	public String memberInfoView(HttpSession session, @ModelAttribute MemberVO vo, Model model) {
		//회원 정보를 모델에 저장
		String userId = (String) session.getAttribute("sessionID");
		model.addAttribute("memberIf", memberService.viewMember(userId));
		//logger.info("클릭한 아이디 : "  + session.getId());
		return form+"userInfo";
	}
	
	//회원 가입 처리
    @RequestMapping(value="MemberJoinAction.do", method=RequestMethod.POST)
    public String jointMember(MemberVO vo){
        memberService.jointMember(vo);
        // * (/)의 유무에 차이
        // /member/list.do : 루트 디렉토리를 기준 /  member/list.do : 현재 디렉토리를 기준 /  member_list.jsp로 리다이렉트
        return form+"joinResultForm";
    }
    //회원 정보 수정 폼 가져오기
    @RequestMapping(value="MemberModifyFormAction.do", method=RequestMethod.GET)
    public String MemberModifyForm(HttpSession session, MemberVO vo, Model model) {
    	//회원 정보를 모델에 저장
    	String userId = (String) session.getAttribute("sessionID");
		model.addAttribute("memberIf", memberService.viewMember(userId));
		return form+"modifyForm";
	}
    //회원 정보 수정 처리
    @RequestMapping(value="MemberModifyAction.do", method=RequestMethod.POST)
    public String modifyMember(HttpSession session, MemberVO vo, Model model){
    	String userId = (String) session.getAttribute("sessionID");
    	if(userId != null) {
    		memberService.modifyMember(vo, userId);
    	}
    	model.addAttribute("memberIf", memberService.viewMember(userId));
        return form+"modifyResultForm";
    }
    //회원 탈퇴
}
