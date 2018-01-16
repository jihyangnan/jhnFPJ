<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    String contentPage = request.getParameter("contentPage");
System.out.println("contentPage : " + contentPage);
    if(contentPage == null) {contentPage="mainView.jsp";}
%>
<!DOCTYPE>
<html>
<head>
<title>YOLO</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/bodyreset.css?var=1" />
<link rel="stylesheet" type="text/css" href="resources/css/mainstyle.css?var=2" />
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/main.js" type="text/javascript"></script>
</head>
<body>
<div id="body">
    <div id="header"><!-- -Menu ���� -->
        <jsp:include page="menu.jsp" flush="true" />
    </div><!-- -Menu �� -->
    
    <div id="main"><!------- Content ���� ---------->
        <jsp:include page="<%=contentPage%>"  />
    </div><!-------- Content �� ----------->

    <div id="footer"><!-- -Footer ���� -->
        <jsp:include page="footer.jsp" flush="true" />
    </div>  <!-- -Footer �� -->

</div><!-- id="body" �� div �� -->
</body>
</html>