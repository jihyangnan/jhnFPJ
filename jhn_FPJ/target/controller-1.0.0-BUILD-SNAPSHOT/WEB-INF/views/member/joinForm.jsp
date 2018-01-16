<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr"); //���ڵ� ó��
%>    
<!DOCTYPE>
<html>
<head>
<title>ȸ������</title>
<meta http-equiv="Content-Type" content="text/html;" charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/bodyreset.css" />
<link rel="stylesheet" type="text/css" href="resources/css/mainstyle.css" />
<link rel="stylesheet" type="text/css" href="resources/css/login.css?var=1" />
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/main.js?var=2" type="text/javascript" charset="EUC-KR"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<body>
<div id="body">
    <form method="post" action="MemberJoinAction.do" id="frm" name="userInfo">
        <!------------------ Content ���� ------------------------->
        <div id="join_box">
            <div class="imgcontainer">
                <h1>ȸ������</h1>
            </div>

            <div class="container" id="join_page" style="width: 90%;">
                <label><b>ID</b></label>
                <!-- ���̵� �Է¶����� Ű���� �Է½� �߻��ϴ� onkeydown �̺�Ʈ �߻� / ����ڰ� �ߺ�üũ�� �ϰ� �� �� ���̵� �Է¶��� ��� ������ ���̵� ����� ���ο� ���̵� �Է� ��  
         �ߺ�üũ�� ���� ���� ������ ó���ϱ� ����-->
                <input type="text" name="id" class="join_text" onkeydown="inputIdChk();" required>
                <button type="button" class="btn btn-primary" onClick="openIdChk();">�ߺ�Ȯ��</button>
                <br /> <input type="hidden" name="idDuplication" value="idUncheck">
                <!-- ���̵� �ߺ�üũ�� �ߴ��� �Ǵ��ϱ� ���� �κ�, value���� idUncheck�̸� �ߺ�üũ�� ���� ���� �� -->
                
                <label><b>Password</b></label> 
                <input type="password" name="password" id="pwd_hide" class="join_text" required>
                <input type="checkbox" id="pwd_show" class="vertical_stayle">
                <span>��й�ȣ ǥ��</span> 
                <span style="color: #929292;"> (��й�ȣ�� �ִ� 6��~12�ڱ��� �Է�    �����մϴ�.)</span><br /> 
                
                <label><b>����</b></label> 
                <input type="radio" value="����" name="sex" id="man" checked> ���� &nbsp;&nbsp;&nbsp; 
                <input type="radio" value="����" name="sex" id="female"> ����<br /> 
                <label><b>�������</b></label> 
                <input type="radio" value="���" name="calender" id="solar" checked>  ��� &nbsp;&nbsp;&nbsp; 
                <input type="radio" value="����"  name="calender" id="lunar"> ���� 
                <input type="text" name="year" class="borth" placeholder="��(4��)" id="year" required>��
                <select class="borth" id="month" name="month">
                    <option value="01" selected>1��</option>
                    <option value="02">2��</option>
                    <option value="03">3��</option>
                    <option value="04">4��</option>
                    <option value="05">5��</option>
                    <option value="06">6��</option>
                    <option value="07">7��</option>
                    <option value="08">8��</option>
                    <option value="09">9��</option>
                    <option value="10">10��</option>
                    <option value="11">11��</option>
                    <option value="12">12��</option>
                </select> 
                
                <select class="borth" id="day" name="day">
                    <option value="01" selected>1��</option>
                    <option value="02">2��</option>
                    <option value="03">3��</option>
                    <option value="04">4��</option>
                    <option value="05">5��</option>
                    <option value="06">6��</option>
                    <option value="07">7��</option>
                    <option value="08">8��</option>
                    <option value="09">9��</option>
                    <option value="10">10��</option>
                    <option value="11">11��</option>
                    <option value="12">12��</option>
                    <option value="13">13��</option>
                    <option value="14">14��</option>
                    <option value="15">15��</option>
                    <option value="16">16��</option>
                    <option value="17">17��</option>
                    <option value="18">18��</option>
                    <option value="19">19��</option>
                    <option value="20">20��</option>
                    <option value="21">21��</option>
                    <option value="22">22��</option>
                    <option value="23">23��</option>
                    <option value="24">24��</option>
                    <option value="25">25��</option>
                    <option value="26">26��</option>
                    <option value="27">27��</option>
                    <option value="28">28��</option>
                    <option value="29">29��</option>
                    <option value="30">30��</option>
                    <option value="31">31��</option>
                </select> <br />
                <div>
                    <ul>
                        <li class="address_th"><label><b>�ּ�</b></label></li>
                        <li class="address_text">
                            <ul>
                                <li>
                                    <span>(�����ȣ)&nbsp;</span> 
                                    <input type="text" name="address_no" class="postcodify_postcode5" id="addr_no" value="" />
                                    <button id="postcodify_search_button" class="btn btn-primary" onclick="setAddress()">�˻�</button>
                                </li>
                                <li>
                                    <span>(���θ�)&nbsp;&nbsp;&nbsp;&nbsp;</span> 
                                    <input type="text" name="address1" class="postcodify_address" id="addr1" value="" />
                                </li>
                                <li>
                                    <span>(���ּ�)&nbsp;</span> 
                                    <input type="text" name="address2" class="postcodify_details" id="addr2" value="" /><br />
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <label><b>E-Mail</b></label> 
                <input type="text" name="email_id" class="email" /> @ 
                <select class="email" style="width: 150px;" name="email_site" id="email_site">
                    <option selected>naver.com</option>
                    <option>gmail.com</option>
                    <option>hanmail.com</option>
                    <option>dreamwiz.com</option>
                    <option>hotmail.com</option>
                    <option>nate.com</option>
                    <option>paran.com</option>
                </select> <br /> 
                
                <label><b>�ڵ���</b></label> 
                <input type="text" name="phone1" class="phone" value="010" required>&nbsp;-&nbsp; 
                <input type="text" name="phone2" class="phone" value="" required>&nbsp;-&nbsp; 
                <input type="text" name="phone3" class="phone" value="" required> <br /> 
                
                <label><b>������ ����</b></label> 
                <input type="radio" value="���̵�" name="pertype" id="guide" > ���̵� &nbsp;&nbsp;&nbsp; 
                <input type="radio" value="������" name="pertype" id="traveler" checked> ������<br /> 
                
                <label><b>���� ������</b></label> 
                <span class="int_trip"> 
                    <input type="checkbox" name="interest_land" class="vertical_stayle" value="�ƽþ�" /> �ƽþ�
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="interest_land" class="vertical_stayle" value="�Ƹ޸�ī" /> �Ƹ޸�ī
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="interest_land" class="vertical_stayle" value="����" /> ����
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" id="etc" class="vertical_stayle" name="interest_land"  value="" onclick="etccheck()"> ��Ÿ
                </span> 
                <input type="text" placeholder="����/���/����" id="etc_trip" class="vertical_stayle"  /> 
                <input type="text" name="interest_land_total" id="interest_land_total" style="display:none;" /> <br /> 
                
                <label><b>���� ��Ÿ��</b></label> 
                <span class="int_trip"> 
                    <input type="checkbox" name="trip_style" class="vertical_stayle" value="�޽�" /> �޽�
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="trip_style" class="vertical_stayle" value="��Ƽ��Ƽ" /> ��Ƽ��Ƽ
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="trip_style" class="vertical_stayle" value="Ŀ�� ����" /> Ŀ�� ����
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="trip_style" class="vertical_stayle" value="ȥ�� ���">ȥ�� ���
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="trip_style" class="vertical_stayle" value="��Ű�� ����">��Ű�� ����
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="trip_style" class="vertical_stayle" value="���� ����">���� ����
                </span> <br /> 
                <label><b>���� ���� Ƚ��</b></label>
                <input type="text" name="inc_tripno" class="phone" value="0"> 
                <span style="color: #929292;">(���� ���� ���� Ƚ���� �����ּ���.)</span> <br /> 
                
                <label><b>�ؿ� ���� Ƚ��</b></label> 
                <input type="text" name="outc_tripno" class="phone" value="0"> 
                <span style="color: #929292;">(�ؿ� ���� ���� Ƚ���� �����ּ���.)</span> <br /> <br />
                <div style="text-align: center;">
                    <span><input type="hidden" name="user_image" value=""></span>
                </div>

                <br />
                <br />
                <br />
                <div id="save_cancel">
                    <button type="button" class="join_btn" onclick="checkValue();">ȸ������</button>
                    <a href="/"><button type="button" class="join_btn">���</button></a>
                </div>
                <br />
                <br />
                <br />
            </div>
        </div>
        <!------------------ Content �� ------------------------->
    </Form>
</div>
<!-- id="body" �� div �� -->
</body>
</html>