<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    if (session.getAttribute("sessionID") == null) { //로그인이 안되었을 때  
%>
        <script type="text/javascript">
            //닉네임 숨김
            $(document).ready(function() {
                var nickname = document.getElementById("nickname");
                var pertype_admin = document.getElementById("admin");
                var login_after_menu = $('.login_after');
                var login_before_menu = $('.login_before');
                if (nickname.style.display != "none") {
                    nickname.style.display = "none"; //숨기기
                    login_after_menu.css('display', 'none');
                    login_before_menu.css('display', 'inline-block');
                    pertype_admin.style.display = "none";
                }
            });
        </script>
<%
    }
    else if(session.getAttribute("sessionID").equals("admin")){  //관리자로 로그인 하였을 경우  
%>
        <script type="text/javascript">
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
<%      
    }else {  //사용자로 로그인 하였을 경우
%>
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
<%
    }
%>
<!--로고부터 메뉴바까지-->
<div class="wid_size">
    <div id="logo_menu">
        <div id="main_logo"><!--로고-->
            <a href="/"><img src="resources/images/main/logo.png" /></a>
        </div>
        <div id="nickname"><!--닉네임-->
            <img src="resources/images/main/foot.png"><%=session.getAttribute("sessionID")%> 님
            <a href="memberLogoutAction.do">[로그아웃]</a>
        </div>
        <div id="main_bar"><!--메뉴바-->
            <ul>
                <li>
                    <a href="loginForm.do" class="login_before" >로그인</a> 
                    <a href="new_write.jsp" class="login_after">새발자국 작성</a> 
                    <a href="Admin.do" id="admin" style="display:none;">관리자 페이지</a> 
                    <ul>
                        <li class="login_before">
                            <a href="joinForm.do">회원가입</a>
                        </li>
                        <li class="login_after">
                            <a href="resources/member/view/mypage.jsp">나의 발자국</a>
                        </li>
                        <li class="login_after">
                            <a href="resources/member/view/mybasket.jsp">장바구니</a>
                        </li>
                        <li class="login_after">
                            <a href="resources/member/view/apply_tour_story.jsp">투어 신청 내역</a>
                        </li>
                        <li class="login_after">
                            <a href="MemberInfoAction.do">회원정보수정</a>
                        </li>
                        <li class="login_after" id="user">
                            <a href="DeleteForm.do">회원탈퇴</a>
                        </li>
                    </ul>
                </li>

                <li><a href="#">아시아</a>
                    <ul>
                        <li>
                            <a href="asia_korea.jsp">한국 <img src="resources/images/main/korea.png" /></a>
                        </li>
                        <li>
                            <a href="asia_japen.jsp">일본 <img src="resources/images/main/japan.png" /></a>
                        </li>
                        <li>
                            <a href="#">중국 <img src="resources/images/main/china.png" /></a>
                        </li>
                        <li>
                            <a href="#">대만 <img src="resources/images/main/taiwan.png" /></a>
                        </li>
                        <li>
                            <a href="#">태국 <img src="resources/images/main/thailand.png" /></a>
                        </li>
                        <li>
                            <a href="#">베트남 <img src="resources/images/main/vietnam.png" /></a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#">아메리카</a>
                    <ul>
                        <li>
                            <a href="#">미국 <img src="resources/images/main/uk.png" /></a>
                        </li>
                        <li>
                            <a href="#">페루 <img src="resources/images/main/peru.png" /></a>
                        </li>
                        <li>
                            <a href="#">캐나다 <img src="resources/images/main/canada.png" /></a>
                        </li>
                        <li>
                            <a href="#">멕시코 <img src="resources/images/main/mexico.png" /></a>
                        </li>
                        <li>
                            <a href="#">브라질 <img src="resources/images/main/brazil.png" /></a>
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

                <li id="traveler"><a href="#">투어 신청</a></li>
                <li id="guide" style="display:none;"><a href="#">투어 등록</a></li>

                <li><a href="#">추천 발자국</a></li>
            </ul>
        </div>
    </div>
</div>

<hr class="menu_hr">