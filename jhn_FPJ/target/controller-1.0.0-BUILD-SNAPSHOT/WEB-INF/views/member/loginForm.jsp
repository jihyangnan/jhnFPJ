<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr"); //���ڵ� ó��
%>
<!DOCTYPE>
<html>
<head>
<title>�α���</title>
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
                <input type="checkbox" name="id_save" />ID ����
            </div>

            <div class="container" style="background-color: #f1f1f1">
                <a href="joinForm.do"><button type="button" class="joinbtn">ȸ������</button></a>
                <a href="SearchPasswordForm.do"><span class="psw">Password ã��</span></a>
            </div>

        </form>
        <%
            //���̵�, ��й�ȣ�� Ʋ����� ȭ�鿡 �޽��� ǥ��
            //LoginPro.jsp���� �α��� ó�� ����� ���� �޽����� ������.
            System.out.println("******************** : " + request.getAttribute("fail"));
        System.out.println("******************** : ��� "); 
            String msg = (String)request.getAttribute("fail");
            System.out.println("msg : " + msg);
            if (msg != null && msg.equals("0")) {
        %>
        <script>
            alert("��й�ȣ�� Ȯ���� �ּ���.")
        </script>
        <%
            } else if (msg != null && msg.equals("-1")) {
        %>
        <script>
            alert("���̵� Ȯ���� �ּ���.")
        </script>
        <%
            }
        %>
    </div>
    <!------------------ Content �� ------------------------->
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</div>
<!-- id="body" �� div �� -->
</body>
</html>