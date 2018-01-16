<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr"); //인코딩 처리
%>    
<!DOCTYPE>
<html>
<head>
<title>회원가입</title>
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
        <!------------------ Content 시작 ------------------------->
        <div id="join_box">
            <div class="imgcontainer">
                <h1>회원가입</h1>
            </div>

            <div class="container" id="join_page" style="width: 90%;">
                <label><b>ID</b></label>
                <!-- 아이디 입력란에는 키보드 입력시 발생하는 onkeydown 이벤트 발생 / 사용자가 중복체크를 하고 난 뒤 아이디 입력란에 사용 가능한 아이디를 지우고 새로운 아이디를 입력 시  
         중복체크가 되지 않은 것으로 처리하기 위함-->
                <input type="text" name="id" class="join_text" onkeydown="inputIdChk();" required>
                <button type="button" class="btn btn-primary" onClick="openIdChk();">중복확인</button>
                <br /> <input type="hidden" name="idDuplication" value="idUncheck">
                <!-- 아이디 중복체크를 했는지 판단하기 위한 부분, value값이 idUncheck이면 중복체크를 하지 않은 것 -->
                
                <label><b>Password</b></label> 
                <input type="password" name="password" id="pwd_hide" class="join_text" required>
                <input type="checkbox" id="pwd_show" class="vertical_stayle">
                <span>비밀번호 표시</span> 
                <span style="color: #929292;"> (비밀번호는 최대 6자~12자까지 입력    가능합니다.)</span><br /> 
                
                <label><b>성별</b></label> 
                <input type="radio" value="남자" name="sex" id="man" checked> 남자 &nbsp;&nbsp;&nbsp; 
                <input type="radio" value="여자" name="sex" id="female"> 여자<br /> 
                <label><b>생년월일</b></label> 
                <input type="radio" value="양력" name="calender" id="solar" checked>  양력 &nbsp;&nbsp;&nbsp; 
                <input type="radio" value="음력"  name="calender" id="lunar"> 음력 
                <input type="text" name="year" class="borth" placeholder="년(4자)" id="year" required>년
                <select class="borth" id="month" name="month">
                    <option value="01" selected>1월</option>
                    <option value="02">2월</option>
                    <option value="03">3월</option>
                    <option value="04">4월</option>
                    <option value="05">5월</option>
                    <option value="06">6월</option>
                    <option value="07">7월</option>
                    <option value="08">8월</option>
                    <option value="09">9월</option>
                    <option value="10">10월</option>
                    <option value="11">11월</option>
                    <option value="12">12월</option>
                </select> 
                
                <select class="borth" id="day" name="day">
                    <option value="01" selected>1일</option>
                    <option value="02">2일</option>
                    <option value="03">3일</option>
                    <option value="04">4일</option>
                    <option value="05">5일</option>
                    <option value="06">6일</option>
                    <option value="07">7일</option>
                    <option value="08">8일</option>
                    <option value="09">9일</option>
                    <option value="10">10일</option>
                    <option value="11">11일</option>
                    <option value="12">12일</option>
                    <option value="13">13일</option>
                    <option value="14">14일</option>
                    <option value="15">15일</option>
                    <option value="16">16일</option>
                    <option value="17">17일</option>
                    <option value="18">18일</option>
                    <option value="19">19일</option>
                    <option value="20">20일</option>
                    <option value="21">21일</option>
                    <option value="22">22일</option>
                    <option value="23">23일</option>
                    <option value="24">24일</option>
                    <option value="25">25일</option>
                    <option value="26">26일</option>
                    <option value="27">27일</option>
                    <option value="28">28일</option>
                    <option value="29">29일</option>
                    <option value="30">30일</option>
                    <option value="31">31일</option>
                </select> <br />
                <div>
                    <ul>
                        <li class="address_th"><label><b>주소</b></label></li>
                        <li class="address_text">
                            <ul>
                                <li>
                                    <span>(우편번호)&nbsp;</span> 
                                    <input type="text" name="address_no" class="postcodify_postcode5" id="addr_no" value="" />
                                    <button id="postcodify_search_button" class="btn btn-primary" onclick="setAddress()">검색</button>
                                </li>
                                <li>
                                    <span>(도로명)&nbsp;&nbsp;&nbsp;&nbsp;</span> 
                                    <input type="text" name="address1" class="postcodify_address" id="addr1" value="" />
                                </li>
                                <li>
                                    <span>(상세주소)&nbsp;</span> 
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
                
                <label><b>핸드폰</b></label> 
                <input type="text" name="phone1" class="phone" value="010" required>&nbsp;-&nbsp; 
                <input type="text" name="phone2" class="phone" value="" required>&nbsp;-&nbsp; 
                <input type="text" name="phone3" class="phone" value="" required> <br /> 
                
                <label><b>가입자 유형</b></label> 
                <input type="radio" value="가이드" name="pertype" id="guide" > 가이드 &nbsp;&nbsp;&nbsp; 
                <input type="radio" value="여행자" name="pertype" id="traveler" checked> 여행자<br /> 
                
                <label><b>관심 여행지</b></label> 
                <span class="int_trip"> 
                    <input type="checkbox" name="interest_land" class="vertical_stayle" value="아시아" /> 아시아
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="interest_land" class="vertical_stayle" value="아메리카" /> 아메리카
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="interest_land" class="vertical_stayle" value="유럽" /> 유럽
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" id="etc" class="vertical_stayle" name="interest_land"  value="" onclick="etccheck()"> 기타
                </span> 
                <input type="text" placeholder="국가/대륙/도시" id="etc_trip" class="vertical_stayle"  /> 
                <input type="text" name="interest_land_total" id="interest_land_total" style="display:none;" /> <br /> 
                
                <label><b>여행 스타일</b></label> 
                <span class="int_trip"> 
                    <input type="checkbox" name="trip_style" class="vertical_stayle" value="휴식" /> 휴식
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="trip_style" class="vertical_stayle" value="액티비티" /> 액티비티
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="trip_style" class="vertical_stayle" value="커플 여행" /> 커플 여행
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="trip_style" class="vertical_stayle" value="혼자 놀기">혼자 놀기
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="trip_style" class="vertical_stayle" value="패키지 여행">패키지 여행
                </span> 
                <span class="int_trip"> 
                    <input type="checkbox" name="trip_style" class="vertical_stayle" value="투어 여행">투어 여행
                </span> <br /> 
                <label><b>국내 여행 횟수</b></label>
                <input type="text" name="inc_tripno" class="phone" value="0"> 
                <span style="color: #929292;">(국내 여행 경험 횟수를 적어주세요.)</span> <br /> 
                
                <label><b>해외 여행 횟수</b></label> 
                <input type="text" name="outc_tripno" class="phone" value="0"> 
                <span style="color: #929292;">(해외 여행 경험 횟수를 적어주세요.)</span> <br /> <br />
                <div style="text-align: center;">
                    <span><input type="hidden" name="user_image" value=""></span>
                </div>

                <br />
                <br />
                <br />
                <div id="save_cancel">
                    <button type="button" class="join_btn" onclick="checkValue();">회원가입</button>
                    <a href="/"><button type="button" class="join_btn">취소</button></a>
                </div>
                <br />
                <br />
                <br />
            </div>
        </div>
        <!------------------ Content 끝 ------------------------->
    </Form>
</div>
<!-- id="body" 인 div 끝 -->
</body>
</html>