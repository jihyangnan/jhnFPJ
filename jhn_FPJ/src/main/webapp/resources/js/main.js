/*
$( document ).ready( function() {
	var jbOffset = $( '.wid_size' ).offset();
	$( window ).scroll( function() {
		var barThis = $(".wid_size");
		if ( $( document ).scrollTop() > jbOffset.top ) {
			$('.wid_size').css({
			left:($(window).width()-$('.wid_size').outerWidth())/2
			});
			barThis.addClass( 'jbFixed' );
		}
		else {
			$('.wid_size').css({
			left:($(window).width()-$('.wid_size').outerWidth())/2
			});
			barThis.removeClass( 'jbFixed' );
		}
	});
} );
*/
/*---------------------------------------------*/
$(document).ready(function(){
	/*-----비밀번호 표시 ---*/
	$('#pwd_show').on('click',function(){
		if($(this).prop('checked')){	/*---체크시--*/
			$('#pwd_hide').attr('type', 'text');
		} else { 
			$('#pwd_hide').attr('type', 'password');
		}

	});
	/*-----기타 클릭 여부 ---*/
	$('#etc').on('click',function(){
		if($(this).prop('checked')){	/*---기타 클릭시---*/
			 $('#etc_trip').css('display', 'inline');
		} else { 
			 $('#etc_trip').css('display', 'none');
		}

	});
	
	/*-----성별 체크---*/
	$('[name="sex"]').on('change',function(){
		var sex = this.value;
		if(sex == "man"){
			$("#man").attr("checked", true);
			$("#female").attr("checked", false);
		}else{
			$("#man").attr("checked", false);
			$("#female").attr("checked", true);
		}
	});
	/*-----음력 양력 체크---*/
	$('[name="calender"]').on('change',function(){
		var calender = this.value;
		if(calender == "solar"){
			$("#solar").attr("checked", true);
			$("#lunar").attr("checked", false);
		}else{
			$("#solar").attr("checked", false);
			$("#lunar").attr("checked", true);
		}
	});
	/*-----년도 숫자만---*/
	$('[name="year"]').keyup(function(e) {
		reg = /[^0-9]/gi;
		v = $(this).val();
		if (reg.test(v)) {
			alert("숫자만 입력해 주세요.");
			$(this).val(v.replace(reg, ''));
			$(this).focus();
		}
	});
	/*-----핸드폰 숫자만---*/
	$('.phone').keyup(function(e) {
		reg = /[^0-9]/gi;
		v = $(this).val();
		if (reg.test(v)) {
			alert("숫자만 입력해 주세요.");
			$(this).val(v.replace(reg, ''));
			$(this).focus();
		}
	});
	/*-----가입자 유형---*/
	$('[name="pertype"]').on('change',function(){
		var pertype = this.value;
		if(pertype == "guide"){
			$("#guide").attr("checked", true);
			$("#traveler").attr("checked", false);
		}else{
			$("#guide").attr("checked", false);
			$("#traveler").attr("checked", true);
		}
	});
});

///////////////////////////////////회원가입 입력값 확인//////////////////////////////////////////////////////
function etccheck(){
	/*-----기타값 넣기 ---*/
	if($('#etc').is(":checked")) //체크되면
	{
		var etc_trip = "";
		$('#etc_trip').keyup(function(){
			etc_trip = $(this).val();
			$("#etc").val("etc-" + etc_trip);
		});
	}else{
		
		$("#etc").val("");
		$("#etc_trip").val("");
	}
}
function checkValue(){
	etccheck();
	if(document.getElementById("etc_trip").value != ""){
		document.getElementById("etc").value = "etc-" + document.getElementById("etc_trip").value;
	}
	//관심 여행지 값 구하기
	var interest_total = "";
	var str = "";
	$("input[name=interest_land]:checked").each(function(){
		var interest = $(this).val();
		interest_total = interest_total + ", " + interest ;
		str = interest_total.substr(1,interest_total.length);		
	});
	if(str == "" || str == "null" || str == null || str == 0 || str == undefined){
		$("[name=interestLandTotal]").val(" ");
	}else{
		$("[name=interestLandTotal]").val(str);
	}
	
	// 입력 확인
	if(document.userInfo.id.value == ""){
		alert("아이디를 입력하세요.");
		return false;
	}else if(document.userInfo.password.value == ""){
		alert("비밀번호를 입력하세요.");
		return false;
	}else if(document.userInfo.year.value == "" || document.userInfo.year.value.length < 4){
		alert("년도를 정확히 입력하세요.");
		return false;
	}else if(document.userInfo.addressnum.value == ""){
		alert("주소를 정확히 입력해주세요.");
		return false;
	}else if(document.userInfo.address1.value == ""){
		alert("주소를 정확히 입력해주세요.");
		return false;
	}else if(document.userInfo.email_id.value == ""){
		alert("이메일을 입력해주세요.");
		return false;
	}else if(document.userInfo.phone2.value == ""){
		alert("핸드폰 번호를 입력해 주세요.");
		return false;
	}else if(document.userInfo.phone3.value == ""){
		alert("핸드폰 번호를 입력해 주세요.");
		return false;
	}else{
		document.getElementById('frm').submit();
		return true;
	}

}
//////////////////////////////////////////////////////////////////////////////////////////////////////////
/* ------------------------------ 아이디 중복체크 화면 open------------------------ */
function openIdChk(){
	window.name = "parentForm";
	window.open("./idCheckForm.jsp", "chkForm", "width=500, height=300, resizable=no, scrollbars=no");
}
/*아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
 * 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때 다시 중복체크를 하도록 한다.
 */
//아이디 입력란에서 키보드로 값을 입력 시 호출되는 함수. 중복 체크 후 아이디 입력란에 사용 가능한 아이디가 입력되어 있을 때 아이디를 지우고 새로운 아이디를 입력하면 문제가 발생할 수 있다.
function inputIdChk(){
	document.userInfo.idDuplication.value = "idUncheck";
}

//아이디 중복 체크 (idCheckForm.jsp)
function idCheck(){
	var id = document.getElementById("userId").value;
	if(!id){	//아이디값 없을 경우
		alert("아이디를 입력하지 않았습니다.");
		return false;
	}else if((id < "0" || id >"9") && (id < "A" || id > "Z") && (id <"a" || id > "z")){
		alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
		return false;
	}else{
		var param = "id = " + id;
		httpRequest = getXMLHttpRequest();
		httpRequest.onreadystatechange = callback;
		httpRequest.open("POST", "MemberIdCheckAction.do", true);
		httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		httpRequest.send(param);
	}
}

/*
 * 서버로 데이터 전달 후 정상적으로 서버에서 데이터를 받을 경우 실행되는 부분이다. 0의 값을 받으면 중복된 아이디가 있는 것이고, 1의 값을 받으면 입력한 아이디는 사용할 수 있는 아이디이다.
 * 취소, 사용하기 버튼에 따른 값 표시
 */
function callback(){
	if(httpRequest.readyState == 4)
		//결과값을 가져온다.
		var resultText = httpRequest.responseText;
		if(resultText == 0){
			alert("사용할 수 없는 아이디 입니다.");
			document.getElementById("cancelBtn").style.visibility = 'visible'; //아이디가 중복되었을 경우 사용하기 버튼 감추기
			document.getElementById("useBtn").style.visibility = 'hidden';
			document.getElementById("msg").innerHTML = "";
		}else if(resultText ==1){
			document.getElementById("cancelBtn").style.visibility = 'hidden'; //아이디가 중복되지 않을 경우 사용하기 버튼 표시
			document.getElementById("seBtn").style.visibility = 'visible';
			document.getElementById("msg").innerHTML = "사용 가능한 아이디입니다.";
		}
}
//사용하기 버튼 클릭 (사용하기 클릭 시 부모창으로 값 전달)
function sendCheckValue(){
	//중복체크 결과인 idCheck 값을 전달 (opener을 이용해 부모창에 있는 hidden의 값을 전달. idCheck가 전달되면 부모창에서는 중복체크를 한것으로 판다.
	opener.document.userInfo.idDuplication.value = "idCheck";
	//회원가입 화면의 id입력란에 값을 전달
	if(opener != null){
		opener.chkForm = null
		self.close();
	}
}

///////////////////////////////////로그인 아이디 체크//////////////////////////////////////////////////////
/*function loginIdCheck(){
	alert(1)
	inputForm = eval("document.loginInfo");
	if(!inputForm.id.value){
		alert("아이디를 입력하세요.");
		inputForm.id.focus();
		return false;
	}
	if(!inputForm.password.value){
		alert("비밀번호를 입력하세요.");
		inputForm.password.focus();
		return false;
	}
}*/
///////////////////////////////////주소 api//////////////////////////////////////////////////////
function setAddress() {
	new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('addr_no').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('addr1').value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            //document.getElementById('addr2').focus();
        }
    }).open();
}