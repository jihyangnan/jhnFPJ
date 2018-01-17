package com.yolo.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	//-----------------로그인 하는 화면 이동
	@RequestMapping(value="loginForm.do", method=RequestMethod.GET)
	public String loginForm(HttpServletRequest request, HttpServletResponse response) {
		return form+"loginForm";
	}
	
	//-----------------회원가입 하는 화면 이동
	@RequestMapping(value="joinForm.do", method=RequestMethod.GET)
	public String joinForm(HttpServletRequest request, HttpServletResponse response) {
		return form+"joinForm";
	} 
	
	//-----------------로그인 처리 실행
	@RequestMapping(value="memberLoginAction.do", method=RequestMethod.POST)
	public ModelAndView login(String id, String password, HttpSession session) throws SQLException{
	        ModelAndView mav = new ModelAndView();
	        String result = memberService.login(id, password);
	        System.out.println("result " + result);
			 if(result == "1"){
			    session.setAttribute("sessionID", id);
				 mav.setViewName("redirect:/");
			}
			else{//result값이 0, 2, 3일 경우 : 아이디가 존재하지 않은 경우, 비밀번호와 일치하지 않은 경우, 비밀번호가 존재하지 않은 경우
				session.setAttribute("msg", result);
			    mav.setViewName("redirect:loginForm.do");
			    //mav.addObject("msg","fail");
			}
	        return mav;
	}
	
	//-----------------로그 아웃 처리 실행
	@RequestMapping(value="memberLogoutAction.do", method=RequestMethod.GET)
	 public String logout(HttpSession session){
	//      session.invalidate();
      session.removeAttribute("sessionID");
      return "redirect:loginForm.do";
      
	}
	
	//-----------------회원 가입 처리
    @RequestMapping(value="memberJoinAction.do", method=RequestMethod.POST)
    public String jointMember(MemberVO vo,  Model model){
        memberService.jointMember(vo);
        model.addAttribute("joinInfo",vo);
        // * (/)의 유무에 차이
        // /member/list.do : 루트 디렉토리를 기준 /  member/list.do : 현재 디렉토리를 기준 /  member_list.jsp로 리다이렉트
        return form+"joinResultForm";
    }
    
	//-----------------로그인한 회원 정보 조회
	@RequestMapping(value="memberInfoAction.do", method=RequestMethod.GET)
	public String memberInfoView(HttpSession session, @ModelAttribute MemberVO vo, Model model) {
		//회원 정보를 모델에 저장
		String userId = (String) session.getAttribute("sessionID");
		model.addAttribute("memberIf", memberService.viewMember(userId));
		//logger.info("클릭한 아이디 : "  + session.getId());
		return form+"userInfo";
	}
	
    //-----------------회원 정보 수정 폼 가져오기
    @RequestMapping(value="memberModifyFormAction.do", method=RequestMethod.GET)
    public String MemberModifyForm(HttpSession session, MemberVO vo, Model model) {
    	//회원 정보를 모델에 저장
    	String userId = (String) session.getAttribute("sessionID");
		model.addAttribute("memberIf", memberService.viewMember(userId));
		return form+"modifyForm";
	}
    
    //-----------------회원 정보 수정 처리
    @RequestMapping(value="memberModifyAction.do", method=RequestMethod.POST)
    public String modifyMember(HttpSession session, MemberVO vo, Model model){
    	String userId = (String) session.getAttribute("sessionID");
    	if(userId != null) {
    		memberService.modifyMember(vo, userId);
    	}
    	model.addAttribute("memberIf", memberService.viewMember(userId));
        return form+"modifyResultForm";
    }
    
    //-----------------회원 탈퇴 화면 이동
    @RequestMapping(value="deleteForm.do", method=RequestMethod.GET)
	public String deleteForm(HttpServletRequest request, HttpServletResponse response) {
		return form+"deleteForm";
	}
    
  //-----------------회원 탈퇴 처리 수행
    @RequestMapping(value="memberDeleteAction.do", method=RequestMethod.POST)
    public String deleteMember(HttpSession session, @RequestParam("id") String id, @RequestParam("password") String password){
    	//비밀번호 확인
    	int resultPw = memberService.checkRw(id, password);
    	if(resultPw == 1) {	//비밀번호가 일치한 경우 : 삭제 후 메인으로 이동
    		memberService.deleteMember(id);
    		session.removeAttribute("sessionID");
    		return "redirect:/";
    	}else {	//비밀번호가 일치하지 않는 경우 : 경고창 표시
    		return form+"deleteForm";
    	}
    }
    
}
