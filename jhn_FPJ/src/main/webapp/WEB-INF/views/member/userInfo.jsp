<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    // MemberInfoAction에서 넘긴 회원정보를 추출한다.
    String id = session.getAttribute("sessionID").toString();
%>    
<!DOCTYPE html>
<html>
<head>
<title>회원가입 정보</title>
<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/bodyreset.css" />
<link rel="stylesheet" type="text/css" href="resources/css/mainstyle.css" />
<link rel="stylesheet" type="text/css" href="resources/css/login.css?var=1" />
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/main.js" type="text/javascript" charset="UTF-8"></script>
</head>
<body>
<div id="body">
    <!------------------ Content 시작 ------------------------->
    <div id="join_box">
        <div class="imgcontainer">
            <h1><%= id %>
                님 정보
            </h1>
        </div>
        <div class="container" id="join_page" style="width: 90%;">
            <label class="join_success"><b>ID</b></label> 
            <span class="join_value"><%=id %></span> <br />
            
            <label class="join_success"><b>성별</b></label> 
            <span class="join_value">${memberIf.sex}</span><br /> 
            
            <label class="join_success"><b>생년월일</b></label> 
            <span class="join_value">${memberIf.calender} &nbsp; 
            ${memberIf.year}년     ${memberIf.month}월  ${memberIf.day}일 </span> <br />
            
            <div>
                <ul>
                    <li class="address_th_success"><label><b>주소</b></label></li>
                    <li class="address_text_success">
                        <ul>
                            <li style="padding: 5px 0px;"><span>(우편번호)&nbsp;</span> ${memberIf.addressnum}
                            </li>
                            <li style="padding: 5px 0px;">
                                <span>(도로명)&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                ${memberIf.address1}
                            </li>
                            <li style="padding: 5px 0px;">
                                <span>(상세주소)&nbsp;</span> 
                                ${memberIf.address2}
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <label class="join_success"><b>E-Mail</b></label> 
            <span class="join_value">${memberIf.email_id} @ ${memberIf.email_site}</span><br /> 
            
            <label class="join_success"><b>핸드폰</b></label> 
            <span class="join_value">${memberIf.phone1} - ${memberIf.phone2} - ${memberIf.phone3}</span> <br /> 
            
            <label class="join_success"><b>가입자 유형</b></label> 
            <span class="join_value">${memberIf.pertype}</span><br /> 
            
            <label class="join_success"><b>관심 여행지</b></label>
            <span class="join_value">${memberIf.interestLandTotal}</span><br /> 
            
            <label class="join_success"><b>여행 스타일</b></label> <span
                class="join_value">${memberIf.tripStyleList}</span> <br />
            
            <label class="join_success"><b>국내 여행 횟수</b></label> 
            <span class="join_value">${memberIf.incTripno}</span> <br /> 
            
            <label class="join_success"><b>해외 여행 횟수</b></label> 
            <span class="join_value">${memberIf.outcTripno}</span> <br />
            <br /> <br />
            <br />
            <br />
            <div id="save_cancel">
                <a href="memberModifyFormAction.do"><button type="button" class="join_btn">회원 정보 수정</button></a>
            </div>
            <br />
        </div>
        
    </div>
    <!------------------ Content 끝 ------------------------->
</div>
<!-- id="body" 인 div 끝 -->

</body>
</html>