<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 탈퇴 처리</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
<%

    if(request.getAttribute("check").equals("1")){
        session.invalidate(); //삭제했다면 세션 정보를 삭제한다.
%>
    <script>
        alert("회원정보가 삭제되었습니다. \n감사합니다.");
        document.location.href="MainForm.do";
    </script>
<%      
    }else{
        System.out.println("실패");
        //비밀번호가 틀린경우 - 삭제가 안되는 경우
%>
    <script>
        alert("비밀번호가 맞지 않습니다. \n다시 확인해 주시길 바랍니다.");
        history.go(-1);
    </script>
<%      
    }
%>
</body>
</html>