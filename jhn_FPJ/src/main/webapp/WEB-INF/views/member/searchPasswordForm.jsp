<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<title>비밀번호 찾기</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/bodyreset.css" />
<link rel="stylesheet" type="text/css" href="resources/css/mainstyle.css?var=1" />
<link rel="stylesheet" type="text/css" href="resources/css/member.css?var=2" />
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/member.js?var=2" type="text/javascript" charset="UTF-8"></script>
</head>
<body>
<div id="body">
    <div id="login_box">
        <form class="loginpage" name="loginInfo" method="post" action="searchPasswordAction.do">
            <div class="imgcontainer"><h1>비밀번호 찾기</h1></div>
            <div class="container" id="login_page">
                <label><h5> <b>ID</b> </h5></label> 
                <input type="text" placeholder="Enter ID" name="id" required id="userId"/> 
                
                <label><h5><b>Email</b></h5></label> 
                <input type="text" placeholder="Enter Email" name="email" required /> 
                <input type="submit" class="login_btn" value="비밀번호 찾기" /> 
            </div>
            <div class="container" style="background-color: #f1f1f1; text-align:center;">
                <a href="loginForm.do"><button type="button" class="joinbtn">로그인</button></a>
                &nbsp;&nbsp;&nbsp;
                <a href="/"><button type="button" class="joinbtn">홈으로</button></a>
            </div>
        </form>
    </div>
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