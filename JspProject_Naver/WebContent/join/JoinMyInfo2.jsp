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
			width: 1px;
			height: 1px;
		}
		
		input[type="radio"]:checked + label {
			border: 1px solid green;
		}
		
		.boxList {
			width: 460px;
			margin: 10px;
			border-radius: 6px;
	    	border: 1px solid #d6d6d6;
		}
		.infoRow {
			height: 50px;
		}
		.radioBtn {
			opacity: 0;
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
   	
	</script>	
</head>

<body>

	<div class="inner" style="width: 500px; margin: 0px auto">
	
		<div class="header">
				<a href="http://www.naver.com">
					<img src="../images/naverLogo.PNG">
				</a>
		</div><!-- header 종료 -->
		
		<form method="post">
			<div id="accountInfo" class="boxList">
				<div id="idInput" class="infoRow">
					<input type="text" placeholder="아이디" name="id" id="idBlank">
					<div id="naverDomain">@naver.com</div>
				</div>
				<hr>
				<div id="pwdInput" class="infoRow">
					<input type="text" placeholder="비밀번호" name="pwd">
				</div>
				<hr>
				<div id="emailInput" class="infoRow">
					<input type="text" placeholder="[선택] 비밀번호 분실 시 확인용 이메일" name="email">
				</div>
			</div>
			
			<div id="personalInfo" class="boxList">
				<div id="nameInput" class="infoRow">
					<input type="text" placeholder="이름" name="name">
				</div>
				<hr>
				<div id="birthDayInput" class="infoRow">
					<input type="text" placeholder="생년월일 8자리" name="birthday">
				</div>
				<hr>
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
				<hr>
				<div id="genderNationalitySelect" class="infoRow">
					<div id="genderSelect" style="width: 40%; border: 1px solid #c6c6c6;">
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
					<div id="nationalitySelect" style="width: 40%; border: 1px solid #c6c6c6;">
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
				<hr>
				<div id="phoneNumInput" class="infoRow">
					<input type="text" placeholder="휴대전화번호" name="phoneNum">
				</div>
			</div>
			
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