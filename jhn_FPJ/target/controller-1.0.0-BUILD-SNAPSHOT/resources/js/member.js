//주소 api

//성별 수정 값 가져오기
function setSexComboValue(val){
	//var selectSex = $('[name="sex"]'); //select 아이디를 가져온다.
	var selectSex = document.getElementsByName("sex");
	for(i=0, j=selectSex.length; i<j; i++) //select 하단 option 수만큼 반복
	{
		if(selectSex[i].value == val) //입력된값과 option의 value가 같은지
		{
			selectSex[i].checked = true; //같은경우라면 체크되도록 한다.
			break;
		}
	}
}
//이메일 수정 값 가져오기
function setEmailComboValue(val){
	var selectMail = document.getElementById("email_site"); //select 아이디를 가져온다.
	for(i=0, j=selectMail.length; i<j; i++) //select 하단 option 수만큼 반복
	{
		if(selectMail.options[i].value == val) //입력된값과 option의 value가 같은지
		{
			selectMail.options[i].selected = true; //같은경우라면 체크되도록 한다.
			break;
		}
	}
}
//양력 음력 수정 값 가져오기
function setCalenderComboValue(val){
	//var selectSex = $('[name="sex"]'); //select 아이디를 가져온다.
	var selectCalender = document.getElementsByName("calender");
	for(i=0, j=selectCalender.length; i<j; i++) //select 하단 option 수만큼 반복
	{
		if(selectCalender[i].value == val) //입력된값과 option의 value가 같은지
		{
			selectCalender[i].checked = true; //같은경우라면 체크되도록 한다.
			break;
		}
	}
}
//생년월일 수정 값 가져오기
function setMonthComboValue(val){
	var selectMonth = document.getElementById("month");
	for(i=0, j=selectMonth.length; i<j; i++)
	{
		if(selectMonth.options[i].value == val)
		{
			selectMonth.options[i].selected = true;
			break;
		}
	}
}
//일 수정 값 가져오기
function setDayComboValue(val){
	var selectDay = document.getElementById("day");
	for(i=0, j=selectDay.length; i<j; i++)
	{
		if(selectDay.options[i].value == val)
		{
			selectDay.options[i].selected = true;
			break;
		}
	}	
}
function setPerTypeComboValue(val){
	//var selectSex = $('[name="sex"]'); //select 아이디를 가져온다.
	var selectPerType = document.getElementsByName("pertype");
	for(i=0, j=selectPerType.length; i<j; i++) //select 하단 option 수만큼 반복
	{
		if(selectPerType[i].value == val) //입력된값과 option의 value가 같은지
		{
			selectPerType[i].checked = true; //같은경우라면 체크되도록 한다.
			break;
		}
	}
}
//관심 여행지 수정 값 가져오기
function setInterest_landComboValue(val){
	var interest_land = document.getElementsByName("interest_land");
	var interest_land_list = val.split(", ");
	for(var i=0; i<interest_land.length; i++){
		//console.log(interest_land[i].value);
		for(var j=0; j<interest_land_list.length; j++)
		{
			if(interest_land[i].value.trim() == interest_land_list[j].trim()){
				interest_land[i].checked = true;
			}
			if(interest_land_list[j].indexOf("etc-") != -1)
			{
				interest_land[3].checked = true;
				var etc_loc = interest_land_list[j].indexOf("-");  //etc 위치 찾기
				var etc_value = interest_land_list[j].substr(etc_loc+1); //etc 뺀 값 넣기
				document.getElementById("etc_trip").style.display="inline";
				document.getElementById("etc_trip").value = etc_value;
			}
		}
	}
}

//여행 스타일 수정 값 가져오기
function setTrip_styleComboValue(val){
	var trip_style = document.getElementsByName("trip_style");
	var trip_style_list = val.split(", ");
	for(var i=0; i<trip_style.length; i++){
		//console.log(trip_style[i].value);
		for(var j=0; j<trip_style_list.length; j++)
		{
			if(trip_style[i].value.trim() == trip_style_list[j].trim()){
				trip_style[i].checked = true;
			}
		}
	}
}

function modify_setAddress() {
	new daum.Postcode(
			{
				oncomplete : function(data) {
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
					if (data.userSelectedType === 'R') {
						//법정동명이 있을 경우 추가한다.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// 건물명이 있을 경우 추가한다.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName
									: data.buildingName);
						}
						// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
						fullAddr += (extraAddr !== '' ? ' ('
								+ extraAddr + ')' : '');
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					alert(1);
					document.getElementById('addr_no').value = data.zonecode; //5자리 새우편번호 사용
					alert(2);
					document.getElementById('addr1').value = fullAddr;
					alert(3);
					// 커서를 상세주소 필드로 이동한다.
					//document.getElementByName('address2').focus();
				}
			}).open();
}

///////////////////////////////////회원 정보 수정 입력값 확인//////////////////////////////////////////////////////
/*
function modifyValue(){
	//관심 여행지 값 구하기
	var interest_total = "";
	var str = "";
	$("input[name=interest_land]:checked").each(function(){
		var interest = $(this).val();
		interest_total = interest_total + ", " + interest ;
		str = interest_total.substr(1,interest_total.length);		
	});
	if(str == "" || str == "null" || str == null || str == 0 || str == undefined){
		$("[name=interest_land_total]").val(" ");
	}else{
		$("[name=interest_land_total]").val(str);
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
	}else if(document.userInfo.address_no.value == ""){
		alert("주소를 정확히 입력해주세요.");
		return false;
	}else if(document.userInfo.email_id.value == ""){
		console.log(document.userInfo);
		console.log("email value::"+ document.userInfo.email_id.value);
		alert("이메일을 입력해주세요.");
		return false;
	}else if(document.userInfo.phone2.value == ""){
		alert("핸드폰 번호를 입력해 주세요.");
		return false;
	}else{
		document.getElementById('frm').submit();
		return true;
	}

}
*/
///////////////////////////////////회원 탈퇴 //////////////////////////////////////////////////////
function memberOutValue(){
	if(document.userInfo.password.value == ""){
		alert("비밀번호를 입력하세요.");
		return false;
	}else{
		document.getElementById('frm').submit();
		return true;
	}

}

