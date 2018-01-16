<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String contentPage = request.getParameter("contentPage");
    if(contentPage == null) {contentPage="mainView.jsp";}
%>
<!DOCTYPE>
<html>
<head>
<title>YOLO</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/bodyreset.css?var=1" />
<link rel="stylesheet" type="text/css" href="resources/css/mainstyle.css?var=2" />
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/main.js" type="text/javascript" charset="UTF-8"></script>
</head>
<body>
<div id="body">
    <div id="header"><!-- -Menu 시작 -->
        <jsp:include page="menu.jsp" flush="true" />
    </div><!-- -Menu 끝 -->
    
    <div id="main"><!------- Content 시작 ---------->
        <jsp:include page="<%=contentPage%>"  />
    </div><!-------- Content 끝 ----------->

    <div id="footer"><!-- -Footer 시작 -->
        <jsp:include page="footer.jsp" flush="true" />
    </div>  <!-- -Footer 끝 -->

</div><!-- id="body" 인 div 끝 -->
</body>
</html>