<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 탈퇴</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/bodyreset.css" />
<link rel="stylesheet" type="text/css" href="resources/css/mainstyle.css?var=1" />
<link rel="stylesheet" type="text/css" href="resources/css/member.css?var=2" />
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/main.js?var=1" type="text/javascript" charset="UTF-8"></script>
<script src="resources/js/member.js?var=1" type="text/javascript" charset="UTF-8"></script>
</head>
<body>
<div id="body">
    <div id="login_box">
        <form class="deletepage" name="deleteInfo" method="post" action="memberDeleteAction.do">
            <div class="imgcontainer"><h1>회원 탈퇴</h1></div>
            <div class="container" >
                <div>
	                <label class="del_label">회원 탈퇴 하시겠습니까?</label>
	                <label class="del_label">탈퇴 후 회원님의 모든 정보 및 게시글은 삭제됩니다.</label>
	                <br/><br/>
	            </div>
                <ul>
                    <li class="del_first_tex">ID</li>
                    <li class="del_first_val">
                    <input type="text" value="${sessionID}" readonly name="id" class="del_id_text"/>
                    </li>
                </ul>
                <label class="del_first_tex">Password</label>
                <input type="password" placeholder="Enter Password" name="password" required class="del_pw_text"/> 
                <br/><br/><br/>
	            <div style="margin:0 auto;">
	                <input type="submit" class="delete_btn" value="회원 탈퇴" /> 
	                <a href="/"><input type="button" class="cancel_btn" value="취소"></a>
                </div>
            </div>
        </form>
    </div>
    <!------------------ Content 끝 ------------------------->
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</div>
<!-- id="body" 인 div 끝 -->
</body>
</html>