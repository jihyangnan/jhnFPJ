<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    if (session.getAttribute("sessionID") == null) { //�α����� �ȵǾ��� ��  
%>
        <script type="text/javascript">
            //�г��� ����
            $(document).ready(function() {
                var nickname = document.getElementById("nickname");
                var pertype_admin = document.getElementById("admin");
                var login_after_menu = $('.login_after');
                var login_before_menu = $('.login_before');
                if (nickname.style.display != "none") {
                    nickname.style.display = "none"; //�����
                    login_after_menu.css('display', 'none');
                    login_before_menu.css('display', 'inline-block');
                    pertype_admin.style.display = "none";
                }
            });
        </script>
<%
    }
    else if(session.getAttribute("sessionID").equals("admin")){  //�����ڷ� �α��� �Ͽ��� ���  
%>
        <script type="text/javascript">
        $(document).ready(function() {
            var nickname = document.getElementById("nickname");
            var pertype_admin = document.getElementById("admin");
            
            var login_after_menu = $('.login_after');
            var login_before_menu = $('.login_before');
            
            if (nickname.style.display = "none") {
                nickname.style.display = "inline-block"; //�����
                login_after_menu.css('display', 'none');
                login_before_menu.css('display', 'none');
            }
            pertype_admin.style.display = "inline-block"; //�����
            
        });
        </script>
<%      
    }else {  //����ڷ� �α��� �Ͽ��� ���
%>
        <script type="text/javascript">
            //�г��� ǥ��
            $(document).ready(function() {
                var nickname = document.getElementById("nickname");
                var pertype_admin = document.getElementById("admin");
                var login_after_menu = $('.login_after');
                var login_before_menu = $('.login_before');
                
                if (nickname.style.display = "none") {
                    nickname.style.display = "inline-block"; //�����
                    login_after_menu.css('display', 'inline-block');
                    login_before_menu.css('display', 'none');
                    pertype_admin.style.display = "none";
                }
            });
        </script>
<%
    }
%>
<!--�ΰ���� �޴��ٱ���-->
<div class="wid_size">
    <div id="logo_menu">
        <div id="main_logo"><!--�ΰ�-->
            <a href="/"><img src="resources/images/main/logo.png" /></a>
        </div>
        <div id="nickname"><!--�г���-->
            <img src="resources/images/main/foot.png"><%=session.getAttribute("sessionID")%> ��
            <a href="memberLogoutAction.do">[�α׾ƿ�]</a>
        </div>
        <div id="main_bar"><!--�޴���-->
            <ul>
                <li>
                    <a href="loginForm.do" class="login_before" >�α���</a> 
                    <a href="new_write.jsp" class="login_after">�����ڱ� �ۼ�</a> 
                    <a href="Admin.do" id="admin" style="display:none;">������ ������</a> 
                    <ul>
                        <li class="login_before">
                            <a href="joinForm.do">ȸ������</a>
                        </li>
                        <li class="login_after">
                            <a href="resources/member/view/mypage.jsp">���� ���ڱ�</a>
                        </li>
                        <li class="login_after">
                            <a href="resources/member/view/mybasket.jsp">��ٱ���</a>
                        </li>
                        <li class="login_after">
                            <a href="resources/member/view/apply_tour_story.jsp">���� ��û ����</a>
                        </li>
                        <li class="login_after">
                            <a href="MemberInfoAction.do">ȸ����������</a>
                        </li>
                        <li class="login_after" id="user">
                            <a href="DeleteForm.do">ȸ��Ż��</a>
                        </li>
                    </ul>
                </li>

                <li><a href="#">�ƽþ�</a>
                    <ul>
                        <li>
                            <a href="asia_korea.jsp">�ѱ� <img src="resources/images/main/korea.png" /></a>
                        </li>
                        <li>
                            <a href="asia_japen.jsp">�Ϻ� <img src="resources/images/main/japan.png" /></a>
                        </li>
                        <li>
                            <a href="#">�߱� <img src="resources/images/main/china.png" /></a>
                        </li>
                        <li>
                            <a href="#">�븸 <img src="resources/images/main/taiwan.png" /></a>
                        </li>
                        <li>
                            <a href="#">�±� <img src="resources/images/main/thailand.png" /></a>
                        </li>
                        <li>
                            <a href="#">��Ʈ�� <img src="resources/images/main/vietnam.png" /></a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#">�Ƹ޸�ī</a>
                    <ul>
                        <li>
                            <a href="#">�̱� <img src="resources/images/main/uk.png" /></a>
                        </li>
                        <li>
                            <a href="#">��� <img src="resources/images/main/peru.png" /></a>
                        </li>
                        <li>
                            <a href="#">ĳ���� <img src="resources/images/main/canada.png" /></a>
                        </li>
                        <li>
                            <a href="#">�߽��� <img src="resources/images/main/mexico.png" /></a>
                        </li>
                        <li>
                            <a href="#">����� <img src="resources/images/main/brazil.png" /></a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#">����</a>
                    <ul>
                        <li>
                            <a href="#">��Ż���� <img src="resources/images/main/italy.png" /></a>
                        </li>
                        <li>
                            <a href="#">������ <img src="resources/images/main/france.png" /></a>
                        </li>
                        <li>
                            <a href="#">������ <img src="resources/images/main/spain.png" /></a>
                        </li>
                        <li>
                            <a href="#">������ <img src="resources/images/main/switzerland.png" /></a>
                        </li>
                        <li>
                            <a href="#">���� <img src="resources/images/main/uk.png" /></a>
                        </li>
                        <li>
                            <a href="#">���� <img src="resources/images/main/germany.png" /></a>
                        </li>
                        <li>
                            <a href="#">ü�� <img src="resources/images/main/czech.png" /></a>
                        </li>
                    </ul>
                </li>

                <li id="traveler"><a href="#">���� ��û</a></li>
                <li id="guide" style="display:none;"><a href="#">���� ���</a></li>

                <li><a href="#">��õ ���ڱ�</a></li>
            </ul>
        </div>
    </div>
</div>

<hr class="menu_hr">