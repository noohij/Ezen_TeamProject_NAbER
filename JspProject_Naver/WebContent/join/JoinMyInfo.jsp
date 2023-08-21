<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>네이버 : 회원가입</title>
	
   	<script type="text/javascript">
   		
		function submitCheckFnc(event) {
			
			// 에러 메시지 div들
			var errorDivList = document.getElementsByClassName("error");
			
			// 유효성 검사를 통과하지 못하면,
			// 빨간 테두리 및 오류 메시지 표시하는(display: block) 함수들
			idCheckFnc();
			pwdCheckFnc();
			emailCheckFnc();
			nameCheckFnc();
			birthdayCheckFnc();
			telecomCheckFnc();
			genderCheckFnc();
			phoneNumCheckFnc();
			agreeCheckFnc();
			authNumCheckFnc();
			
			for (var i = 0; i < errorDivList.length; i++) {
				var displayStyleCheck = errorDivList[i].getAttribute("style");
				
				if (displayStyleCheck == "display: block") {
					event.preventDefault();
				}
			}
		}
	   	
	   	function idFocusFnc() {
	   		
	   		var idInputObj = document.getElementById("idBlank");
	   		var idDivObj = document.getElementById("idInput");
	   		
	   		// 공백 검사
	   		if (idDivObj.value != "" &&			// 문제가 생긴 후 수정할 땐 초록으로 바뀌지 않음
	   			idDivObj.getAttribute("style") != "border: 2px solid #ff3f3f") {
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
			
			// 공백 검사
			if (idInputObj.value == "") {
				noIdErrorObj.setAttribute("style", "display: block");
				invalidIdErrorObj.setAttribute("style", "display: none");
				idDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 패턴 검사
			} else if (!idPattern.test(idInputObj.value)) {
				noIdErrorObj.setAttribute("style", "display: none");
				invalidIdErrorObj.setAttribute("style", "display: block");
				idDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noIdErrorObj.setAttribute("style", "display: none");
				invalidIdErrorObj.setAttribute("style", "display: none");
				idDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		} 
	   	
		function pwdFocusFnc() {
	   		
	   		var pwdInputObj = document.getElementById("pwdBlank");
	   		var pwdDivObj = document.getElementById("pwdInput");
	   		
	   		// 공백 검사
	   		if (pwdDivObj.value != "" &&
	   			pwdDivObj.getAttribute("style") != "border: 2px solid #ff3f3f") {
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
	   		
	     	// 공백 검사
	   		if (pwdInputObj.value == "") {
				noPwdErrorObj.setAttribute("style", "display: block");
				invalidPwdErrorObj.setAttribute("style", "display: none");
				pwdDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 길이 검사
			} else if (pwdInputObj.value.length < 8 || pwdInputObj.value.length > 20) {
	   			noPwdErrorObj.setAttribute("style", "display: none");
				invalidPwdErrorObj.setAttribute("style", "display: block");
				pwdDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 패턴 검사
	   		} else if ((checkNum < 0 && checkUpperEng < 0) ||
	   			(checkUpperEng < 0 && checkLowerEng < 0) ||
	   			(checkLowerEng < 0 && checkNum < 0)) {
	   			noPwdErrorObj.setAttribute("style", "display: none");
				invalidPwdErrorObj.setAttribute("style", "display: block");
				pwdDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
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
	   		
	   		// 패턴 검사
	   		if (!emailPattern.test(emailInputObj.value) && emailInputObj.value != "") {
				invalidEmailErrorObj.setAttribute("style", "display: block");
				emailDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				invalidEmailErrorObj.setAttribute("style", "display: none");
				emailDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function nameFocusFnc() {
	   		
	   		var nameInputObj = document.getElementById("nameBlank");
	   		var nameDivObj = document.getElementById("nameInput");
	   		
	   		// 공백 검사
	   		if (nameDivObj.value != "" &&
	   			nameDivObj.getAttribute("style") != "border: 2px solid #ff3f3f") {
	   			nameDivObj.setAttribute("style", "border: 2px solid #09aa5c");
			}
		}
		
		function nameCheckFnc() {
			   		
	   		var nameInputObj = document.getElementById("nameBlank");
	   		var noNameErrorObj = document.getElementById("noNameError");
	   		var nameDivObj = document.getElementById("nameInput");
	   		
	   		// 공백 검사
	   		if (nameInputObj.value == "") {
				noNameErrorObj.setAttribute("style", "display: block");
				nameDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noNameErrorObj.setAttribute("style", "display: none");
				nameDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function birthdayFocusFnc() {
	   		
	   		var birthdayInputObj = document.getElementById("birthdayBlank");
	   		var birthdayDivObj = document.getElementById("birthdayInput");
	   		
	   		// 공백 검사
	   		if (birthdayDivObj.value != "" &&
	   			birthdayDivObj.getAttribute("style") != "border: 2px solid #ff3f3f") {
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
			
		    // 공백 검사
			if (birthdayInputObj.value == "") {
				noBirthdayErrorObj.setAttribute("style", "display: block");
				invalidBirthdayErrorObj.setAttribute("style", "display: none");
				under14BirthdayErrorObj.setAttribute("style", "display: none");
				birthdayDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 연, 월, 일 검사
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
				birthdayDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 만 나이 검사
			} else if (
				today-(140000) < parseInt(birthdayInputObj.value) &&
				parseInt(birthdayInputObj.value) <= today
			) {
				noBirthdayErrorObj.setAttribute("style", "display: none");
				invalidBirthdayErrorObj.setAttribute("style", "display: none");
				under14BirthdayErrorObj.setAttribute("style", "display: block");
				birthdayDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noBirthdayErrorObj.setAttribute("style", "display: none");
				invalidBirthdayErrorObj.setAttribute("style", "display: none");
				under14BirthdayErrorObj.setAttribute("style", "display: none");
				birthdayDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function telecomCheckFnc() {
			
			var noTelecomErrorDiv = document.getElementById("noTelecomError");
			var telecomSelectObj = document.getElementById("telecomBlank");
			var telecomDivObj = document.getElementById("telecomInput");
		    var selectedValue = telecomSelectObj.options[telecomSelectObj.selectedIndex].value;
			
		    // 공백(미선택) 검사
			if (selectedValue == "선택 안함") {
				noTelecomErrorDiv.setAttribute("style", "display: block");
				telecomDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noTelecomErrorDiv.setAttribute("style", "display: none");
				telecomDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function genderCheckFnc() {
			var radioList = document.getElementsByClassName("radioBtn");
			var genderDivObj = document.getElementById("genderNationalitySelect");
			var noGenderErrorDiv = document.getElementById("noGenderError");
			
			// 공백(미선택) 검사
			if (radioList[0].checked == false && radioList[1].checked == false) {
				noGenderErrorDiv.setAttribute("style", "display: block");
				genderDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noGenderErrorDiv.setAttribute("style", "display: none");
				genderDivObj.setAttribute("style", "border: 2px solid #d6d6d6");
			}
		}
		
		function phoneNumFocusFnc() {
	   		
	   		var phoneNumInputObj = document.getElementById("phoneNumBlank");
	   		var phoneNumDivObj = document.getElementById("phoneNumInput");
	   		
	   		// 공백 검사
	   		if (phoneNumDivObj.value != "" &&
	   			phoneNumDivObj.getAttribute("style") != "border: 2px solid #ff3f3f") {
	   			phoneNumDivObj.setAttribute("style", "border: 2px solid #09aa5c");
			}
		}
		
		function phoneNumCheckFnc() {
				
			var phoneNumInputObj = document.getElementById("phoneNumBlank");
			var noPhoneNumErrorObj = document.getElementById("noPhoneNumError");
			var invalidPhoneNumErrorObj = document.getElementById("invalidPhoneNumError");
			var phoneNumDivObj = document.getElementById("phoneNumInput");
			//			전화번호 패턴:		010~019		3~4글자		4글자
			var phoneNumPattern = /^(01[016789]{1})[0-9]{3,4}[0-9]{4}$/;
			
			// 공백 검사
			if (phoneNumInputObj.value == "") {
				noPhoneNumErrorObj.setAttribute("style", "display: block");
				invalidPhoneNumErrorObj.setAttribute("style", "display: none");
				phoneNumDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 패턴 검사
			} else if (!phoneNumPattern.test(phoneNumInputObj.value)) {
				noPhoneNumErrorObj.setAttribute("style", "display: none");
				invalidPhoneNumErrorObj.setAttribute("style", "display: block");
				phoneNumDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noPhoneNumErrorObj.setAttribute("style", "display: none");
				invalidPhoneNumErrorObj.setAttribute("style", "display: none");
				phoneNumDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		function agreeCheckFnc() {
			
			var agreeCheckObj = document.getElementById("agreeAll");
			var noAgreeErrorDiv = document.getElementById("noAgreeError");
			var agreementDivObj= document.getElementById("agreementDiv");
			
			// 공백(약관 체크) 검사
			if (agreeCheckObj.checked == false) {
				noAgreeErrorDiv.setAttribute("style", "display: block");
				agreementDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				noAgreeErrorDiv.setAttribute("style", "display: none");
				agreementDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
		var authNum = "";
		
		function authorizationFnc() {
			
			authNum = (parseInt(Math.random()*999999) + 1);
			alert(authNum);
		}
		
		function authNumCheckFnc() {
			
			var authNumInputObj = document.getElementById("authNumInput").value;
			var authDivObj = document.getElementById("authorizationDiv");
			
			// 공백 검사
			if (authNumInputObj == "") {
			wrongAuthNumErrorDiv.setAttribute("style", "display: block");
			authDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			// 인증번호 불일치 검사
			} else if (authNumInputObj != authNum) {
				wrongAuthNumErrorDiv.setAttribute("style", "display: block");
				authDivObj.setAttribute("style", "border: 2px solid #ff3f3f");
			} else {
				wrongAuthNumErrorDiv.setAttribute("style", "display: none");
				authDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		}
		
   	
	</script>	
	<link rel="stylesheet" type="text/css" href="../css/JoinMyInfo.css">
</head>

<body>

	<div class="inner">
	
		<div class="header">
				<a href="http://www.naver.com">
					<img src="../images/naverLogo.PNG">
				</a>
		</div><!-- header 종료 -->
		
		<form method="post">
			<div id="accountInfo" class="boxList">
				<div id="idInput" class="infoRow">
					<img src="../images/joinIcon_id.JPG">
					<input type="text" placeholder="아이디" name="id" id="idBlank" class="input"
							onblur="idCheckFnc();" onfocus="idFocusFnc();">
					<div id="naverDomain">@naver.com</div>
				</div>
				
				<div id="pwdInput" class="infoRow">
					<img src="../images/joinIcon_pwd.JPG">
					<input type="password" placeholder="비밀번호" name="pwd" id="pwdBlank" class="input"
							onblur="pwdCheckFnc();" onfocus="pwdFocusFnc();">
				</div>
				
				<div id="emailInput" class="infoRow">
					<img src="../images/joinIcon_email.JPG">
					<input type="text" placeholder="[선택] 비밀번호 분실 시 확인용 이메일"
							name="email" id="emailBlank" class="input"
							onblur="emailCheckFnc();" onfocus="emailFocusFnc();">
				</div>
			</div>
			
			<div id="noIdError" class="error">
				· 아이디: 필수 정보입니다.
			</div>
			<div id="invalidIdError" class="error">
				· 아이디: 5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.
			</div>
			<div id="noPwdError" class="error">
				· 비밀번호: 필수 정보입니다.
			</div>
			<div id="invalidPwdError" class="error">
				· 비밀번호: 8~16자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요.
			</div>
			<div id="invalidEmailError" class="error">
				· 이메일: 이메일 주소가 정확한지 확인해 주세요.
			</div>
			
			<div id="personalInfo" class="boxList">
				<div id="nameInput" class="infoRow">
					<img src="../images/joinIcon_id.JPG">
					<input type="text" placeholder="이름" name="name"
						id="nameBlank" class="input"
						onblur="nameCheckFnc();" onfocus="nameFocusFnc();">
				</div>
				
				<div id="birthdayInput" class="infoRow">
					<img src="../images/joinIcon_birthday.JPG">
					<input type="number" placeholder="생년월일 8자리" name="birthday"
						id="birthdayBlank" class="input"
						onblur="birthdayCheckFnc();" onfocus="birthdayFocusFnc();">
				</div>
				
				<div id="telecomInput" class="infoRow">
					<img src="../images/joinIcon_telecom.JPG">
					<select name="telecom" id="telecomBlank" onblur="telecomCheckFnc();">
						<option value="선택 안함" selected disabled hidden>통신사 선택</option>
						<option>SKT</option>
						<option>KT</option>
						<option>LG U+</option>
						<option>SKT 알뜰폰</option>
						<option>KT 알뜰폰</option>
						<option>LG U+ 알뜰폰</option>
					</select>
				</div>
				
				<div id="genderNationalitySelect" class="infoRow">
					<div id="genderSelect">
						<div id="maleDiv" class="radioDiv">
							<input type="radio" id="male" class="radioBtn" 
								name="gender" value='남성' onblur="genderCheckFnc();">
							<label for="male" class="radioLabel">
								남자
							</label>
						</div>
						<div id="femaleDiv" class="radioDiv">
							<input type="radio" id="female" class="radioBtn" 
								name="gender" value='여성' onblur="genderCheckFnc();">
							<label for="female" class="radioLabel">
								여자
							</label>
						</div>	
					</div>
					
					<div id="nationalitySelect">
						<div id="koreanDiv" class="radioDiv">
							<input type="radio" id="korean" class="radioBtn" 
								name="nationality" value="내국인" checked="checked">
							<label for="korean" class="radioLabel">
								내국인
							</label>
						</div>	
						<div id="foreignerDiv" class="radioDiv">
							<input type="radio" id="foreigner" class="radioBtn" 
								name="nationality" value="외국인">
							<label for="foreigner" class="radioLabel">
								외국인
							</label>
						</div>
					</div>
				</div>
				
				<div id="phoneNumInput" class="infoRow">
					<img src="../images/joinIcon_phoneNum.JPG">
					<input type="number" placeholder="휴대전화번호" name="phoneNum" id="phoneNumBlank" class="input"
							onblur="phoneNumCheckFnc();" onfocus="phoneNumFocusFnc();">
				</div>
			</div>
			
			<div id="noNameError" class="error">
				· 이름: 필수 정보입니다.
			</div>
			<div id="noBirthdayError" class="error">
				· 생년월일: 필수 정보입니다.
			</div>
			<div id="invalidBirthdayError" class="error">
				· 생년월일: 생년월일이 정확한지 확인해 주세요.
			</div>
			<div id="under14BirthdayError" class="error" id="under14ErrorMsg">
				생년월일: 만 14세 미만의 어린이는 보호자의 동의가 필요합니다.
			</div>
			
			<div id="noTelecomError" class="error">
				· 통신사: 이용하는 통신사를 선택해 주세요.
			</div>
			<div id="noGenderError" class="error">
				· 성별: 성별을 선택해 주세요.
			</div>
			
			<div id="noPhoneNumError" class="error">
				· 휴대전화번호: 필수 정보입니다.
			</div>
			<div id="invalidPhoneNumError" class="error">
				· 휴대전화번호: 휴대전화번호가 정확한지 확인해 주세요.
			</div>
			
			<div id="agreementDiv" class="boxList">
				<input type="checkbox" id="agreeAll" onblur="agreeCheckFnc();">
				<label for="agreeAll" id="agreeLabel">
					<span class="required">[필수]</span>
					 인증 약관 전체동의
				</label>
			</div>
			
			<div id="noAgreeError" class="error">
				필수 약관에 모두 동의해 주세요.
			</div>
			
			<div id="authorizationDiv" class="boxList">
				<input type="number" id="authNumInput" class="input" placeholder="인증번호"
					onblur="authNumCheckFnc();">
				<input type="button" value="인증번호확인" id="authButton"
					onclick="authorizationFnc()">
			</div>
			
			<div id="wrongAuthNumErrorDiv" class="error">
				인증번호가 일치하지 않습니다.
			</div>
			
			<div>
				<input type="submit" value="회원가입" id="submitButton" onclick="submitCheckFnc(event)">
			</div>
		</form>
		
	</div><!-- inner 종료 -->
	

</body>

</html>