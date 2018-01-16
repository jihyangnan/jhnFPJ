<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr"); //인코딩 처리
%>
<!DOCTYPE>
<html>
<head>
<title>로그인</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/bodyreset.css" />
<link rel="stylesheet" type="text/css" href="resources/css/mainstyle.css?var=1" />
<link rel="stylesheet" type="text/css" href="resources/css/login.css?var=1" />
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/main.js?var=1" type="text/javascript"></script>
</head>
<body>
<div id="body">
    <div id="login_box">
        <form class="loginpage" name="loginInfo" method="post" action="memberLoginAction.do">
            <div class="imgcontainer"><h1>Login</h1></div>
            <div class="container" id="login_page">
                <label><h5> <b>ID</b> </h5></label> 
                <input type="text" placeholder="Enter ID" name="id" required /> 
                
                <label><h5><b>Password</b></h5></label> 
                <input type="password" placeholder="Enter Password" name="password" required /> 
                <input type="submit" class="login_btn" value="Login" /> 
                <input type="checkbox" name="id_save" />ID 저장
            </div>

            <div class="container" style="background-color: #f1f1f1">
                <a href="joinForm.do"><button type="button" class="joinbtn">회원가입</button></a>
                <a href="SearchPasswordForm.do"><span class="psw">Password 찾기</span></a>
            </div>

        </form>
        <%
            //아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
            //LoginPro.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
            System.out.println("******************** : " + request.getAttribute("fail"));
        System.out.println("******************** : 통과 "); 
            String msg = (String)request.getAttribute("fail");
            System.out.println("msg : " + msg);
            if (msg != null && msg.equals("0")) {
        %>
        <script>
            alert("비밀번호를 확인해 주세요.")
        </script>
        <%
            } else if (msg != null && msg.equals("-1")) {
        %>
        <script>
            alert("아이디를 확인해 주세요.")
        </script>
        <%
            }
        %>
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