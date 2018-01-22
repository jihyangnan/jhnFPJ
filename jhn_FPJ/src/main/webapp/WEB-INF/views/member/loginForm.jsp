<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<%
    request.setCharacterEncoding("UTF-8"); //인코딩 처리
%>
<!DOCTYPE>
<html>
<head>
<title>로그인</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/bodyreset.css" />
<link rel="stylesheet" type="text/css" href="resources/css/mainstyle.css?var=1" />
<link rel="stylesheet" type="text/css" href="resources/css/member.css?var=1" />
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/main.js?var=2" type="text/javascript" charset="UTF-8"></script>
<script>
$(document).ready(function(){
    var userId = getCookie("id");
    //저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어간다.
    if(userId){ // ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면
        $('#userId').val(userId);
        $('#idSaveCheck').attr("checked", true);    ///ID 저장하기를 체크 상태로 두기.
    }
});
</script>
</head>
<body>
<div id="body">
    <div id="login_box">
        <form class="loginpage" name="loginInfo" method="post" action="memberLoginAction.do">
            <div class="imgcontainer"><h1>Login</h1></div>
            <div class="container" id="login_page">
                <label><h5> <b>ID</b> </h5></label> 
                <input type="text" placeholder="Enter ID" name="id" required id="userId"/> 
                
                <label><h5><b>Password</b></h5></label> 
                <input type="password" placeholder="Enter Password" name="password" required /> 
                <input type="submit" class="login_btn" value="Login" onclick="saveId()" /> 
                <input type="checkbox" name="id_save" id="idSaveCheck"/>ID 저장
            </div>

            <div class="container" style="background-color: #f1f1f1">
                <a href="joinForm.do"><button type="button" class="joinbtn">회원가입</button></a>
                <a href="searchPasswordForm.do"><span class="psw">Password 찾기</span></a>
            </div>
        </form>
    </div>
    <!------------------ Content 끝 ------------------------->
	<c:set var="msg" value="${sessionScope.msg}" scope="session" />
	    <c:choose>
        <c:when test="${msg!=null && msg=='0'}">    <!-- 아이디가 존재하지 않은 경우 -->
            <script>
                 alert("아이디가 존재하지 않습니다. \n아이디를 다시 확인해 주세요.");
            </script>
            <c:remove var="msg" scope="session"></c:remove>
        </c:when>
        <c:when test="${msg!=null && msg=='2'}">
            <script>
                 alert("비밀번호가 일치하지 않습니다.. \n비밀번호를 다시 확인해 주세요.");
            </script>
            <c:remove var="msg" scope="session"></c:remove>
        </c:when>
	</c:choose>
	 ${sessionID }
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