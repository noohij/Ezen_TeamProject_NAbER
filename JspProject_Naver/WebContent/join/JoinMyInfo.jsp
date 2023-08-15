<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>네이버 : 회원가입</title>
	
	<style type="text/css">
	
		input {
			width: 400px;
			height: 40px;
			margin: 5px 0px 5px 40px;
			border: none;
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
			margin: 11px 0px 11px 40px;
			border: none;
		}
		input[type=radio] {
			margin-left: 0px;
			width: 1px;
			height: 1px;
		}
		
		input[type="radio"]:checked + label {
			border: 1px solid green;
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
		#smallLabel{
			width: 100px;
			height: 20px;
		}
		#naverDomain {
			float: right;
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
	</style>
	
   	<script type="text/javascript">
   	
	   	window.onload = function() {
	   	}
	   	
	   	
	   	
	   	function idCheckFnc() {
	   		
	   		var idInputObj = document.getElementById("idBlank");
	   		var noIdErrorObj = document.getElementById("noIdError");
	   		var idDivObj = document.getElementById("idInput");
	
			if (idInputObj.value == "") {
				noIdErrorObj.setAttribute("style", "display: block");
				idDivObj.setAttribute("style", "border: 2px solid red");
			} else {
				noIdErrorObj.setAttribute("style", "display: none");
				idDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
		} 
	   	
		function pwdCheckFnc() {
	   		
	   		var pwdInputObj = document.getElementById("pwdBlank");
	   		var noPwdErrorObj = document.getElementById("noPwdError");
	   		var pwdDivObj = document.getElementById("pwdInput");
	   		
	   		if (pwdInputObj.value == "") {
				noPwdErrorObj.setAttribute("style", "display: block");
				pwdDivObj.setAttribute("style", "border: 2px solid red");
			} else {
				noPwdErrorObj.setAttribute("style", "display: none");
				pwdDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
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
				
		function birthdayCheckFnc() {
				
			var birthdayInputObj = document.getElementById("birthdayBlank");
			var noBirthdayErrorObj = document.getElementById("noBirthdayError");
			var birthdayDivObj = document.getElementById("birthdayInput");
				
			if (birthdayInputObj.value == "") {
				noBirthdayErrorObj.setAttribute("style", "display: block");
				birthdayDivObj.setAttribute("style", "border: 2px solid red");
			} else {
				noBirthdayErrorObj.setAttribute("style", "display: none");
				birthdayDivObj.setAttribute("style", "border: 1px solid #d6d6d6");
			}
			if (
				parseInt(birthdayInputObj.value) < 19000000 ||
				parseInt((birthdayInputObj.value).substring(4, 6)) > 12 ||
				parseInt((birthdayInputObj.value).substring(4, 6)) < 01 ||
				parseInt((birthdayInputObj.value).substring((birthdayInputObj.value).length-2)) > 31 ||
				parseInt((birthdayInputObj.value).substring((birthdayInputObj.value).length-2)) < 01
			){
				noBirthdayErrorObj.setAttribute("style", "display: block"); //색깔, 출력문 수정해야됨. 출력문 밑에 새로 쓰고 감췄다 열었다 하는거로
				birthdayDivObj.setAttribute("style", "border: 2px solid blue");
			}
		}
		
		function phoneNumCheckFnc() {
				
			var phoneNumInputObj = document.getElementById("phoneNumBlank");
			var noPhoneNumErrorObj = document.getElementById("noPhoneNumError");
			var phoneNumDivObj = document.getElementById("phoneNumInput");
			
			if (phoneNumInputObj.value == "") {
				noPhoneNumErrorObj.setAttribute("style", "display: block");
				phoneNumDivObj.setAttribute("style", "border: 2px solid red");
			} else {
				noPhoneNumErrorObj.setAttribute("style", "display: none");
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
					<input type="text" placeholder="아이디" name="id" id="idBlank" onblur="idCheckFnc();">
					<div id="naverDomain">@naver.com</div>
				</div>
				
				<div id="pwdInput" class="infoRow">
					<input type="text" placeholder="비밀번호" name="pwd" id="pwdBlank" onblur="pwdCheckFnc();">
				</div>
				
				<div id="emailInput" class="infoRow">
					<input type="text" placeholder="[선택] 비밀번호 분실 시 확인용 이메일" name="email">
				</div>
			</div>
			
			<div id="noIdError" class="error" style="display:none">· 아이디: 필수 정보입니다.</div>
			<div id="noPwdError" class="error" style="display:none">· 비밀번호: 필수 정보입니다.</div>
			
			<div id="personalInfo" class="boxList">
				<div id="nameInput" class="infoRow">
					<input type="text" placeholder="이름" name="name" id="nameBlank" onblur="nameCheckFnc();">
				</div>
				
				<div id="birthdayInput" class="infoRow">
					<input type="text" placeholder="생년월일 8자리" name="birthday" id="birthdayBlank" onblur="birthdayCheckFnc();">
				</div>
				
				<div id="telecomInput" class="infoRow">
					<select name="telecom" id="telecomBlank">
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
					<div id="genderSelect" style="width: 40%; height: 60%; border: 1px solid #c6c6c6; margin-top: 10px; margin-left: 10px;">
						<input type="radio" id="male" class="radioBtn" 
							name="gender" value='남성'>
						<label for="male" style="width: 49%; border-right: 1px solid #c6c6c6;">
							남자
						</label>
						<input type="radio" id="female" class="radioBtn" 
							name="gender" value='여성'>
<!-- 						<label for="female" style="width: 49%; border-right: 1px solid #c6c6c6;"> -->
						<label for="female" style="width: 49%;">
							여자
						</label>
					</div>
					<div id="nationalitySelect" style="width: 40%; height: 60%; border: 1px solid #c6c6c6; margin-top: 10px; margin-left: 10px;">
						<input type="radio" id="korean" class="radioBtn" 
							name="nationality" value="내국인">
						<label for="korean" style="width: 49%; border-right: 1px solid #c6c6c6;">
							내국인
						</label>
						<input type="radio" id="foreigner" class="radioBtn" 
							name="nationality" value="외국인">
						<label for="foreigner" style="width: 49%;">
							외국인
						</label>
					</div>
				</div>
				
				<div id="phoneNumInput" class="infoRow">
					<input type="text" placeholder="휴대전화번호" name="phoneNum" id="phoneNumBlank" onblur="phoneNumCheckFnc();">
				</div>
			</div>
			
			<div id="noNameError" class="error" style="display:none">· 이름: 필수 정보입니다.</div>
			<div id="noBirthdayError" class="error" style="display:none">· 생년월일: 필수 정보입니다.</div>
			<div id="noPhoneNumError" class="error" style="display:none">· 휴대전화번호: 필수 정보입니다.</div>
			
			<div id="agreement" class="boxList" style="height: 50px;">
				<input type="checkbox" id="agreeAll">
				<label for="agreeAll">[필수] 인증 약관 전체동의</label>
			</div>
			
			<div>
				<input type="submit" value="인증요청"
					id="button">
			</div>
		</form>
		
	</div><!-- inner 종료 -->
	
	

</body>


</html>