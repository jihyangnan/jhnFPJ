<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <% String userId = (String)session.getAttribute("sessionID"); %> --%>
<c:choose>
    <c:when test="${sessionID=='admin'}">
        <script type="text/javascript">
            //닉네임 표시
            $(document).ready(function() {
            var nickname = document.getElementById("nickname");
            var pertype_admin = document.getElementById("admin");
            var login_after_menu = $('.login_after');
            var login_before_menu = $('.login_before');
            
            if (nickname.style.display = "none") {
                nickname.style.display = "inline-block"; //숨기기
                login_after_menu.css('display', 'none');
                login_before_menu.css('display', 'none');
            }
            pertype_admin.style.display = "inline-block"; //숨기기
            
        });
        </script>
    </c:when>
    <c:when test="${sessionID!=null}">
	    <script type="text/javascript">
	            //닉네임 표시
	            $(document).ready(function() {
	                var nickname = document.getElementById("nickname");
	                var pertype_admin = document.getElementById("admin");
	                var login_after_menu = $('.login_after');
	                var login_before_menu = $('.login_before');
	                
	                if (nickname.style.display = "none") {
	                    nickname.style.display = "inline-block"; //숨기기
	                    login_after_menu.css('display', 'inline-block');
	                    login_before_menu.css('display', 'none');
	                    pertype_admin.style.display = "none";
	                }
	            });
	            
	        </script>
    </c:when>
</c:choose>
<!--로고부터 메뉴바까지-->
<div class="wid_size">
    <div id="logo_menu">
        <div id="main_logo"><!--로고-->
            <a href="/"><img src="resources/images/main/logo.png" /></a>
        </div>
        <div id="nickname"><!--닉네임-->
            <img src="resources/images/main/foot.png">${sessionID} 님
            <a href="memberLogoutAction.do"><font class="btn_logout">로그아웃</font></a>
        </div>
        <div id="main_bar"><!--메뉴바-->
            <ul>
                <li>
                    <a href="loginForm.do" class="login_before" >로그인</a> 
                    <a href="newWriteForm.do" class="login_after" style="display:none;">새발자국 작성</a> 
                    <a href="Admin.do" id="admin" style="display:none;">관리자 페이지</a> 
                    <ul>
                        <li class="login_before">
                            <a href="joinForm.do">회원가입</a>
                        </li>
                        <li class="login_after" style="display:none;">
                            <a href="myYoloboardList.do">나의 발자국</a>
                        </li>
                        <li class="login_after" style="display:none;">
                            <a href="resources/member/view/mybasket.jsp">장바구니</a>
                        </li>
                        <li class="login_after" style="display:none;">
                            <a href="resources/member/view/apply_tour_story.jsp">투어 신청 내역</a>
                        </li>
                        <li class="login_after" style="display:none;">
                            <a href="memberInfoAction.do?userId=${sessionID}">회원정보수정</a>
                        </li>
                        <li class="login_after" id="user" style="display:none;">
                            <a href="deleteForm.do">회원탈퇴</a>
                        </li>
                    </ul>
                </li>

                <li><a href="asiaPageForm.do?continent=아시아">아시아</a>
                    <ul>
                        <li>
                            <a href="koreaPageForm.do?country=한국"">한국 <img src="resources/images/main/korea.png" /></a>
                        </li>
                        <li>
                            <a href="japenPageForm.do?country=일본">일본 <img src="resources/images/main/japan.png" /></a>
                        </li>
                        <li>
                            <a href="japenPageForm.do?country=중국">중국 <img src="resources/images/main/china.png" /></a>
                        </li>
                        <li>
                            <a href="japenPageForm.do?country=대만">대만 <img src="resources/images/main/taiwan.png" /></a>
                        </li>
                        <li>
                            <a href="japenPageForm.do?country=태국">태국 <img src="resources/images/main/thailand.png" /></a>
                        </li>
                        <li>
                            <a href="japenPageForm.do?continent=일본">베트남 <img src="resources/images/main/vietnam.png" /></a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#">아메리카</a>
                    <ul>
                        <li>
                            <a href="japenPageForm.do?continent=일본">미국 <img src="resources/images/main/uk.png" /></a>
                        </li>
                        <li>
                            <a href="japenPageForm.do?continent=일본">페루 <img src="resources/images/main/peru.png" /></a>
                        </li>
                        <li>
                            <a href="japenPageForm.do?continent=일본">캐나다 <img src="resources/images/main/canada.png" /></a>
                        </li>
                        <li>
                            <a href="japenPageForm.do?continent=일본">멕시코 <img src="resources/images/main/mexico.png" /></a>
                        </li>
                        <li>
                            <a href="japenPageForm.do?continent=일본">브라질 <img src="resources/images/main/brazil.png" /></a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#">유럽</a>
                    <ul>
                        <li>
                            <a href="#">이탈리아 <img src="resources/images/main/italy.png" /></a>
                        </li>
                        <li>
                            <a href="#">프랑스 <img src="resources/images/main/france.png" /></a>
                        </li>
                        <li>
                            <a href="#">스페인 <img src="resources/images/main/spain.png" /></a>
                        </li>
                        <li>
                            <a href="#">스위스 <img src="resources/images/main/switzerland.png" /></a>
                        </li>
                        <li>
                            <a href="#">영국 <img src="resources/images/main/uk.png" /></a>
                        </li>
                        <li>
                            <a href="#">독일 <img src="resources/images/main/germany.png" /></a>
                        </li>
                        <li>
                            <a href="#">체코 <img src="resources/images/main/czech.png" /></a>
                        </li>
                    </ul>
                </li>
                <c:choose>
                    <c:when test="${sessionScope.pertypeResult=='가이드'}">
                        <li id="traveler"><a href="#">투어 등록</a></li>
                    </c:when>
                    <c:otherwise>
                        <li id="guide"><a href="#">투어 신청</a></li>
                    </c:otherwise>
                </c:choose>
                
                <li><a href="#">추천 발자국</a></li>
            </ul>
        </div>
    </div>
</div>
<hr class="menu_hr">