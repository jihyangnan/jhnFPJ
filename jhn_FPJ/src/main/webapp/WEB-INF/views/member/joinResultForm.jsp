<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<%@ page import="com.yolo.dao.MemberDAO" %>    
<%@ page import="com.yolo.vo.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<title>회원가입 완료</title>
<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/bodyreset.css" />
<link rel="stylesheet" type="text/css" href="resources/css/mainstyle.css" />
<link rel="stylesheet" type="text/css" href="resources/css/member.css?var=2" />
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/main.js" type="text/javascript" charset="UTF-8"></script>
</head>
<body>
<div id="body">
    <!------------------ Content 시작 ------------------------->
    <div id="join_box">
        <div class="imgcontainer">
            <h1>회원가입 완료</h1>
        </div>
        <div class="container" id="join_page" style="width: 95%;">
            <label class="join_success"><b>ID</b></label> 
            <span class="join_value">${joinInfo.id}</span> <br /> 
            
            <label class="join_success"><b>Password</b></label>
            <span class="join_value">${joinInfo.password}</span> <br /> 
            
            <label class="join_success"><b>성별</b></label> 
            <span class="join_value">${joinInfo.sex}</span><br /> 
            
            <label class="join_success"><b>생년월일</b></label> 
            <span class="join_value">${joinInfo.calender} &nbsp; ${joinInfo.year}년
           ${joinInfo.month}월 ${joinInfo.day}일 
            </span> <br />

            <div>
                <ul>
                    <li class="address_th_success">
                        <label><b>주소</b></label>
                    </li>
                    <li class="address_text_success">
                        <ul>
                            <li style="padding: 5px 0px;">
                                <span>(우편번호)&nbsp;</span> ${joinInfo.addressnum}
                            </li>
                            <li style="padding: 5px 0px;">
                                <span>(도로명)&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                ${joinInfo.address1}
                            </li>
                            <li style="padding: 5px 0px;">
                                <span>(상세주소)&nbsp;</span> 
                                ${joinInfo.address2}
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>

            <label class="join_success"><b>E-Mail</b></label> 
            <span class="join_value">
                ${joinInfo.email_id}@${joinInfo.email_site}
            </span>
            <br /> 
            
            <label class="join_success"><b>핸드폰</b></label> 
            <span class="join_value">
                ${joinInfo.phone1} - ${joinInfo.phone2} - ${joinInfo.phone3}
            </span> <br /> 
            
            <label class="join_success"><b>가입자 유형</b></label> 
            <span class="join_value">${joinInfo.pertype}</span><br /> 
            
            <label class="join_success"><b>관심 여행지</b></label> 
            <span class="join_value">${joinInfo.interestLandTotal}</span><br /> 
            
            <label class="join_success"><b>여행 스타일</b></label> 
            <span class="join_value">${joinInfo.tripStyleList}</span> <br />

            <label class="join_success"><b>국내 여행 횟수</b></label> 
            <span class="join_value">${joinInfo.incTripno}</span> <br /> 
                
            <label class="join_success"><b>해외 여행 횟수</b></label> 
            <span class="join_value">${joinInfo.outcTripno}</span> <br />
            <br /> <br />
            <br />
            <br />
            <div id="save_cancel">
                <a href="loginForm.do">
                    <button type="button" class="join_btn">로그인</button>
                </a>
            </div>
            <br />
            <br />
            <br />
        </div>
    </div>
    <!------------------ Content 끝 ------------------------->
</div>
<!-- id="body" 인 div 끝 -->
</body>
</html>