<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>네이버 : 회원가입</title>
	
	<style type="text/css">
		hr {
		    background: #d6d6d6;
		    height: 1px;
		    border: 0;
		}
		input {
			height: 40px;
			margin: 5px 0px;
			border: none;
		}
		.boxList {
			width: 400px;
			margin: 10px;
			border-radius: 6px;
	    	border: 1px solid #d6d6d6;
		}
		.infoRaw {
			height: 50px;
		}
		.radioBtn {
			opacity: 0;
		}
		.smallLabel{
			width: 100px;
			height: 20px;
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
			margin-left: 10px; 
		}
	</style>
	
   	<script type="text/javascript">
		
	</script>	
</head>

<body>

	<div class="inner" style="width: 500px; margin: 0px auto">
		<div class="header">
				<a href="http://www.naver.com">
					<img src="./img/logo_naver.jpg">
				</a>
		</div>
		<!-- header 종료 -->
		
		<div id="accountInfo" class="boxList">
			<div id="idInput" class="infoRaw">
				<input type="text" placeholder="아이디">@naver.com
			</div>
			<hr>
			<div id="pwdInput" class="infoRaw">
				<input type="text" placeholder="비밀번호">
			</div>
			<hr>
			<div id="emailInput" class="infoRaw">
				<input type="text" placeholder="[선택] 비밀번호 분실 시 확인용 이메일">
			</div>
		</div>
		
		<div id="personalInfo" class="boxList">
			<div id="nameInput" class="infoRaw">
				<input type="text" placeholder="이름">
			</div>
			<hr>
			<div id="birthDayInput" class="infoRaw">
				<input type="text" placeholder="생년월일 8자리">
			</div>
			<hr>
			<div id="telecomInput" class="infoRaw">
<!-- 				<button type="button" id="btn_telecom" class="btn_telecom" aria-expanded="" placeholder="통신사 선택"> -->
					
					
					
					
					
<!-- 				aria-expanded: 아코디언메뉴 https://weblin.tistory.com/80-->

<!-- 				<select> -->
<!-- 					<option>SKT</option> -->
<!-- 					<option>KT</option> -->
<!-- 					<option>LGT</option> -->
<!-- 					<option>SKT 알뜰폰</option> -->
<!-- 					<option>KT 알뜰폰</option> -->
<!-- 					<option>LGT 알뜰폰</option> -->
<!-- 				</select> -->
			</div>
			<hr>
			<div id="gendernationalitySelect" class="infoRaw">
				<div id="genderSelect">
					<input type="radio" id="male" class="radioBtn">
					<label for="male" class="smallLabel">남자</label>
					<input type="radio" id="male" class="radioBtn">
					<label for="female" class="smallLabel">여자</label>
				</div>
				<div id="nationalitySelect">
					<input type="radio" id="korean" class="radioBtn">
					<label for="korean">내국인</label>
					<input type="radio" id="foreigner" class="radioBtn">
					<label for="foreigner">외국인</label>
				</div>
			</div>
			<hr>
			<div id="phoneNumInput" class="infoRaw">
				<input type="text" placeholder="휴대전화번호">
			</div>
		</div>
		
		<div id="agreement" class="boxList" style="height: 50px;">
			<input type="radio" id="agreeAll" class="radioBtn">
			<label for="agreeAll">[필수] 인증 약관 전체동의</label>
		</div>
		
		<div id="button">
			<input type="button" value="인증요청"
				style="width: 400px; height: 70px;">
		</div>
		
	</div>
	
	

</body>


</html>