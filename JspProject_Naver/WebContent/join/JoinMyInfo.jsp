<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>네이버 : 회원가입</title>
	
	<style type="text/css">
	
		.radioDiv:has(.radioBtn:checked){
   			background-color: #47C83E;
		}	
	
		input {
			width: 400px;
			height: 40px;
			margin: 5px 0px 5px 0px;
			border: none;
		}
		form {
			margin-top: 50px;
		}
		label {
			font-size: 13px;
		    line-height: 18px;
		    color: #929294;
		    text-align: center;
		}
		#agreeAll {
			width: 30px;
			height: 30px;
			margin: 10px;
		}
		#idBlank {
			width: 300px;
		}
		#naverDomain {
			margin: 15px 0px;
		}
		#telecomBlank {
			width: 400px;
			height: 30px;
			margin: 11px 0px 11px 0px;
			border: none;
		}
		input[type=radio] {
			margin-left: 0px;
			width: 1px;
			height: 1px;
		}
		
/* 		input[type="radio"]:checked + label { */
/* 			border: 2px solid #09aa5c; */
/* 		} */
		
		textarea:focus, input:focus{
		    outline: none;
		}
		
		.genderNationalitySelect label {
			width: 100px;
		}
		
		.boxList {
			width: 460px;
			margin: 10px;
			border-radius: 6px;
	    	border: 1px solid #d6d6d6;
		}
		.infoRow {
			height: 50px;
			border: 1px solid #d6d6d6;
			margin: -1px;
		}
		
 		#idInput, #nameInput {
 			border-top-left-radius: 6px;
   			border-top-right-radius: 6px;
 		}

		#emailInput, #phoneNumInput {
			border-bottom-left-radius: 6px;
   			border-bottom-right-radius: 6px;
		}
		
		.radioBtn {
			opacity: 0;
		}
		.error {
			margin-left: 20px;
			font-size: 13px;
		    line-height: 18px;
		    color: #ff3f3f;
		}
		#under14ErrorMsg {
			margin-left: 20px;
			font-size: 13px;
		    line-height: 18px;
			color: #09AA5C;
		}
		#smallLabel{
			width: 100px;
			height: 20px;
		}
		#naverDomain {
			float: right;
			padding: 0px 10px;
			color: #767678;
		}
		#accountInfo {
			
		}
		#personalInfo {
			
		}
		#agreement {
			
		}
		#genderSelect, #nationalitySelect {
			width: 100px;
			border-radius: 6px;
		}
		#genderSelect {
			width: 180px;
			float: left;
		}
		#nationalitySelect {
			width: 180px;
			float: right;
		}
		#button {
			margin: 0px 0px 20px 10px;
			position: fixed; bottom: 0;
			width: 460px; height: 52px;
			background-color: #09AA5C; color: #FFFFFF;
		    border: 1px solid rgba(0,0,0,.05);
		    border-radius: 6px;
		    font-size: 18px;
		    font-weight: 500;
		    line-height: 22px;
		}
		#agreeLabel {
			font-size: 15px;
		    font-weight: 600;
		    line-height: 22px;
		    letter-spacing: -.8px;
		    color: #222;
		    vertical-align: middle;
		}
		label>span {
			color: #09AA5C;
		}
		img {
			margin-left: 10px;
			margin-top: 6px;
		}
		
		#agreement {
			height: 200px;
		}
		
	</style>
	
   	<script type="text/javascript">
   	
	   	window.onload = function() {
	   		
			var agreeCheckObj = document.getElementById("agreeAll");
			var nextButtonObj = document.getElementById("button");

			agreeCheckObj.addEventListener('change', function() {
				if (agreeCheckObj.checked) {
					nextButtonObj.disabled = false;
	         	} else {
					nextButtonObj.disabled = true;
				}
	   		});
	   	}
	   	
	   	function idFocusFnc() {
	   		
	   		var idInputObj = document.getElementById("idBlank");
	   		var idDivObj = document.getElementById("idInput");
	   		
	   		if (idDivObj.value != "" &&			// 문제가 생긴 후 수정할 땐 초록으로 바뀌지 않음
	   			idDivObj.getAttribute("style") != "border: 2px solid red") {
	   			idDivObj.setAttribute("style", "border: 2px solid #09aa5c");
			}
		}
	   	
	   	function idCheckFnc() {
	   		
	   		var idInputObj = document.getElementById("idBlank");
	   		var noIdErrorObj = document.getElementById("noIdError");
	   		var idDivObj = document.getElementById("idInput");
	   		var invalidIdErrorObj = document.getElementById("invalidIdError");
	   		var idPattern = /^[a-z0-9_-]{5,20}$/;
// 	   		^: 문자열의 시작을 나타냅니다.
// 	   		[a-z0-9_-]: 소문자 알파벳, 숫자, 밑줄(_), 또는 대시(-) 중 하나와 일치해야 합니다.
// 				이 부분은 입력된 문자열이 이 문자들 중 하나와 일치하는지를 검사합니다.
// 	   		{5,20}: 이전 패턴 [a-z0-9_-]가 최소 5번부터 최대 20번까지 연속으로 나타나야 합니다.
// 				즉, 문자열의 길이는 5에서 20 사이여야 합니다.
// 	   		$: 문자열의 끝을 나타냅니다.
	
			
			if (idInputObj.value == "") {
				noIdErrorObj.setAttribute("style", "display: block");
				invalidIdErrorObj.setAttribute("style", "display: none");
				idDivObj.setAttribute("style", "border: 2px solid red");
			} else if (!idPattern.test(idInputObj.value)) {
				noIdErrorObj.setAttribute("style", "display: none");
				invalidIdErrorObj.setAttribute("style", "display: block");
				idDivObj.setAttribute("style", "border: 2px solid red");
			} else {
				noIdErrorObj.setAttribute("style", "display: none");
				invalidIdErrorObj.setAttribute("style", "display: none");
				idDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		} 
	   	
		function pwdFocusFnc() {
	   		
	   		var pwdInputObj = document.getElementById("pwdBlank");
	   		var pwdDivObj = document.getElementById("pwdInput");
	   		
	   		if (pwdDivObj.value != "" &&
	   			pwdDivObj.getAttribute("style") != "border: 2px solid red") {
	   			pwdDivObj.setAttribute("style", "border: 2px solid #09aa5c");
			}
		}
	   	
		function pwdCheckFnc() {
	   		
	   		var pwdInputObj = document.getElementById("pwdBlank");
	   		var noPwdErrorObj = document.getElementById("noPwdError");
	   		var invalidPwdErrorObj = document.getElementById("invalidPwdError");
	   		var pwdDivObj = document.getElementById("pwdInput");
	   		
	   		var checkNum = pwdInputObj.value.search(/[0-9]/g);
	     	var checkUpperEng = pwdInputObj.value.search(/[A-Z]/g);
	     	var checkLowerEng = pwdInputObj.value.search(/[a-z]/g);
	   		
	   		if (pwdInputObj.value == "") {
				noPwdErrorObj.setAttribute("style", "display: block");
				invalidPwdErrorObj.setAttribute("style", "display: none");
				pwdDivObj.setAttribute("style", "border: 2px solid red");
			} else if (pwdInputObj.value.length < 8 || pwdInputObj.value.length > 20) {
	   			noPwdErrorObj.setAttribute("style", "display: none");
				invalidPwdErrorObj.setAttribute("style", "display: block");
				pwdDivObj.setAttribute("style", "border: 2px solid red");
	   		} else if ((checkNum < 0 && checkUpperEng < 0) ||
	   			(checkUpperEng < 0 && checkLowerEng < 0) ||
	   			(checkLowerEng < 0 && checkNum < 0)) {
	   			noPwdErrorObj.setAttribute("style", "display: none");
				invalidPwdErrorObj.setAttribute("style", "display: block");
				pwdDivObj.setAttribute("style", "border: 2px solid red");
	   		} else {
				noPwdErrorObj.setAttribute("style", "display: none");
				invalidPwdErrorObj.setAttribute("style", "display: none");
				pwdDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function emailCheckFnc() {
	   		
	   		var emailInputObj = document.getElementById("emailBlank");
	   		var invalidEmailErrorObj = document.getElementById("invalidEmailError");
	   		var emailDivObj = document.getElementById("emailInput");
	   		
	   		var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9ㄱ-ㅎ|ㅏ-ㅣ|가-힣.-]+\.[a-zA-Z]{2,}$/;
	   		
	   		if (!emailPattern.test(emailInputObj.value) && emailInputObj.value != "") {
				invalidEmailErrorObj.setAttribute("style", "display: block");
				emailDivObj.setAttribute("style", "border: 2px solid red");
			} else {
				invalidEmailErrorObj.setAttribute("style", "display: none");
				emailDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function nameFocusFnc() {
	   		
	   		var nameInputObj = document.getElementById("nameBlank");
	   		var nameDivObj = document.getElementById("nameInput");
	   		
	   		if (nameDivObj.value != "" &&
	   			nameDivObj.getAttribute("style") != "border: 2px solid red") {
	   			nameDivObj.setAttribute("style", "border: 2px solid #09aa5c");
			}
		}
		
		function nameCheckFnc() {
			   		
	   		var nameInputObj = document.getElementById("nameBlank");
	   		var noNameErrorObj = document.getElementById("noNameError");
	   		var nameDivObj = document.getElementById("nameInput");
	   		
	   		if (nameInputObj.value == "") {
				noNameErrorObj.setAttribute("style", "display: block");
				nameDivObj.setAttribute("style", "border: 2px solid red");
			} else {
				noNameErrorObj.setAttribute("style", "display: none");
				nameDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function birthdayFocusFnc() {
	   		
	   		var birthdayInputObj = document.getElementById("birthdayBlank");
	   		var birthdayDivObj = document.getElementById("birthdayInput");
	   		
	   		if (birthdayDivObj.value != "" &&
	   			birthdayDivObj.getAttribute("style") != "border: 2px solid red") {
	   			birthdayDivObj.setAttribute("style", "border: 2px solid #09aa5c");
			}
		}
				
		function birthdayCheckFnc() {
				
			var birthdayInputObj = document.getElementById("birthdayBlank");
			var noBirthdayErrorObj = document.getElementById("noBirthdayError");
			var birthdayDivObj = document.getElementById("birthdayInput");
			var invalidBirthdayErrorObj = document.getElementById("invalidBirthdayError");
			var under14BirthdayErrorObj = document.getElementById("under14BirthdayError");
			
			var nameDivObj = document.getElementById("nameInput");
			
			var date = new Date();
		    var year = date.getFullYear();
		    var month = ("0" + (1 + date.getMonth())).slice(-2);
		    var day = ("0" + date.getDate()).slice(-2);
		    var today = (year + month + day);
			
			if (birthdayInputObj.value == "") {
				noBirthdayErrorObj.setAttribute("style", "display: block");
				invalidBirthdayErrorObj.setAttribute("style", "display: none");
				under14BirthdayErrorObj.setAttribute("style", "display: none");
				birthdayDivObj.setAttribute("style", "border: 2px solid red");
			} else if (
				parseInt(birthdayInputObj.value) < 19000101 ||
				parseInt(birthdayInputObj.value) > today ||
				parseInt((birthdayInputObj.value).substring(4, 6)) < 01 ||
				parseInt((birthdayInputObj.value).substring(4, 6)) > 12 ||
				parseInt(birthdayInputObj.value.slice(-2)) < 01 ||
				parseInt(birthdayInputObj.value.slice(-2)) > 31
			) {
				noBirthdayErrorObj.setAttribute("style", "display: none");
				invalidBirthdayErrorObj.setAttribute("style", "display: block");
				under14BirthdayErrorObj.setAttribute("style", "display: none");
				birthdayDivObj.setAttribute("style", "border: 2px solid red");
			} else if (
				today-(140000) < parseInt(birthdayInputObj.value) &&
				parseInt(birthdayInputObj.value) <= today
			) {
				noBirthdayErrorObj.setAttribute("style", "display: none");
				invalidBirthdayErrorObj.setAttribute("style", "display: none");
				under14BirthdayErrorObj.setAttribute("style", "display: block");
				birthdayDivObj.setAttribute("style", "border: 2px solid red");
			} else {
				noBirthdayErrorObj.setAttribute("style", "display: none");
				invalidBirthdayErrorObj.setAttribute("style", "display: none");
				under14BirthdayErrorObj.setAttribute("style", "display: none");
				birthdayDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
// 				birthdayInputObj.value = birthdayInputObj.value.substring(0, 4) + "." +
// 										birthdayInputObj.value.substring(4, 6) + "." +
// 										birthdayInputObj.value.substring(6, 8);
			}
		}
		
		function phoneNumFocusFnc() {
	   		
	   		var phoneNumInputObj = document.getElementById("phoneNumBlank");
	   		var phoneNumDivObj = document.getElementById("phoneNumInput");
	   		
	   		if (phoneNumDivObj.value != "" &&
	   			phoneNumDivObj.getAttribute("style") != "border: 2px solid red") {
	   			phoneNumDivObj.setAttribute("style", "border: 2px solid #09aa5c");
			}
		}
		
		function phoneNumCheckFnc() {
				
			var phoneNumInputObj = document.getElementById("phoneNumBlank");
			var noPhoneNumErrorObj = document.getElementById("noPhoneNumError");
			var invalidPhoneNumErrorObj = document.getElementById("invalidPhoneNumError");
			var phoneNumDivObj = document.getElementById("phoneNumInput");
			
			var phoneNumPattern = /^(01[016789]{1})[0-9]{3,4}[0-9]{4}$/;
			
			if (phoneNumInputObj.value == "") {
				noPhoneNumErrorObj.setAttribute("style", "display: block");
				invalidPhoneNumErrorObj.setAttribute("style", "display: none");
				phoneNumDivObj.setAttribute("style", "border: 2px solid red");
			} else if (!phoneNumPattern.test(phoneNumInputObj.value)) {
				noPhoneNumErrorObj.setAttribute("style", "display: none");
				invalidPhoneNumErrorObj.setAttribute("style", "display: block");
				phoneNumDivObj.setAttribute("style", "border: 2px solid red");
			} else {
				noPhoneNumErrorObj.setAttribute("style", "display: none");
				invalidPhoneNumErrorObj.setAttribute("style", "display: none");
				phoneNumDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
   	
	</script>	
</head>

<body>

	<div class="inner" style="width: 500px; margin: 0px auto">
	
		<div class="header">
				<a href="http://www.naver.com">
					<img src="../images/naverLogo.PNG" style="width: 20%; height: 20%;">
				</a>
		</div><!-- header 종료 -->
		
		<form method="post">
			<div id="accountInfo" class="boxList">
				<div id="idInput" class="infoRow">
					<img src="../images/joinIcon_id.JPG">
					<input type="text" placeholder="아이디" name="id" id="idBlank" onblur="idCheckFnc();" onfocus="idFocusFnc();">
					<div id="naverDomain">@naver.com</div>
				</div>
				
				<div id="pwdInput" class="infoRow">
					<img src="../images/joinIcon_pwd.JPG">
					<input type="password" placeholder="비밀번호" name="pwd" id="pwdBlank" onblur="pwdCheckFnc();" onfocus="pwdFocusFnc();">
				</div>
				
				<div id="emailInput" class="infoRow">
					<img src="../images/joinIcon_email.JPG">
					<input type="text" placeholder="[선택] 비밀번호 분실 시 확인용 이메일" name="email" id="emailBlank" onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
			</div>
			
			<div id="noIdError" class="error" style="display:none">· 아이디: 필수 정보입니다.</div>
			<div id="invalidIdError" class="error" style="display:none">· 아이디: 5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.</div>
			<div id="noPwdError" class="error" style="display:none">· 비밀번호: 필수 정보입니다.</div>
			<div id="invalidPwdError" class="error" style="display:none">· 비밀번호: 8~16자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요.</div>
			<div id="invalidEmailError" class="error" style="display:none">· 이메일: 이메일 주소가 정확한지 확인해 주세요.</div>
			
			<div id="personalInfo" class="boxList">
				<div id="nameInput" class="infoRow">
					<img src="../images/joinIcon_id.JPG">
					<input type="text" placeholder="이름" name="name" id="nameBlank" onblur="nameCheckFnc();" onfocus="nameFocusFnc();">
				</div>
				
				<div id="birthdayInput" class="infoRow">
					<img src="../images/joinIcon_birthday.JPG">
					<input type="text" placeholder="생년월일 8자리" name="birthday" id="birthdayBlank" onblur="birthdayCheckFnc();" onfocus="birthdayFocusFnc();">
				</div>
				
				<div id="telecomInput" class="infoRow">
					<img src="../images/joinIcon_telecom.JPG">
					<select name="telecom" id="telecomBlank" onfocus="telecomFocusFnc();">
						<option value="" selected disabled hidden>통신사 선택</option>
						<option>SKT</option>
						<option>KT</option>
						<option>LG U+</option>
						<option>SKT 알뜰폰</option>
						<option>KT 알뜰폰</option>
						<option>LG U+ 알뜰폰</option>
					</select>
				</div>
				
				<div id="genderNationalitySelect" class="infoRow">
					<div id="genderSelect" style="width: 200px; height: 30px; border: 1px solid #c6c6c6; margin-top: 10px; margin-left: 10px;">
						<div id="maleDiv" class="radioDiv" style="width: 49%; height: 99%; float: left; border-right: 1px solid #c6c6c6;">
							<input type="radio" id="male" class="radioBtn" 
								name="gender" value='남성'>
							<label for="male" style="display:inline-block; width: 87px; height: 80%; text-align: center; margin-top: 3px;">
								남자
							</label>
						</div>
						
						<div id="femaleDiv" class="radioDiv" style="width: 49%; height: 99%; float: right;">
							<input type="radio" id="female" class="radioBtn" 
								name="gender" value='여성'>
							<label for="female" style="display:inline-block; width: 87px; height: 80%; text-align: center; margin-top: 3px;">
								여자
							</label>
						</div>	
					</div>
					
					<div id="nationalitySelect" style="width: 200px; height: 60%; border: 1px solid #c6c6c6; margin-top: 10px; margin-right: 10px;">
						<div id="koreanDiv" class="radioDiv" style="width: 49%; height: 99%; float: left; border-right: 1px solid #c6c6c6;">
							<input type="radio" id="korean" class="radioBtn" 
								name="nationality" value="내국인">
							<label for="korean" style="display:inline-block; width: 87px; height: 80%; text-align: center; margin-top: 3px;">
								내국인
							</label>
						</div>	
						<div id="foreignerDiv" class="radioDiv" style="width: 49%; height: 99%; float: right;">
							<input type="radio" id="foreigner" class="radioBtn" 
								name="nationality" value="외국인">
							<label for="foreigner" style="display:inline-block; width: 87px; height: 80%; text-align: center; margin-top: 3px;">
								외국인
							</label>
						</div>
					</div>
				</div>
				
				<div id="phoneNumInput" class="infoRow">
					<img src="../images/joinIcon_phoneNum.JPG">
					<input type="text" placeholder="휴대전화번호" name="phoneNum" id="phoneNumBlank" onblur="phoneNumCheckFnc();" onfocus="phoneNumFocusFnc();">
				</div>
			</div>
			
			<div id="noNameError" class="error" style="display:none">· 이름: 필수 정보입니다.</div>
			<div id="noBirthdayError" class="error" style="display:none">· 생년월일: 필수 정보입니다.</div>
			<div id="invalidBirthdayError" class="error" style="display:none">· 생년월일: 생년월일이 정확한지 확인해 주세요.</div>
			<div id="under14BirthdayError" class="error" id="under14ErrorMsg" style="display:none;">생년월일: 만 14세 미만의 어린이는 보호자의 동의가 필요합니다.</div>
			<div id="noPhoneNumError" class="error" style="display:none">· 휴대전화번호: 필수 정보입니다.</div>
			<div id="invalidPhoneNumError" class="error" style="display:none">· 휴대전화번호: 휴대전화번호가 정확한지 확인해 주세요.</div>
			
			<div id="agreement" class="boxList" style="height: 50px;">
				<input type="checkbox" id="agreeAll">
				<label for="agreeAll" id="agreeLabel"><span class="required">[필수]</span> 인증 약관 전체동의</label>
			</div>
			
			<div>
				<input type="submit" value="인증요청"
					id="button">
			</div>
		</form>
		
	</div><!-- inner 종료 -->
	
	

</body>


</html>