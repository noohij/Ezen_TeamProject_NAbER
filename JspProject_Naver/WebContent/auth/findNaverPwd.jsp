<%@page import="java.io.Console"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>
		네이버 : 비밀번호 찾기
	</title>
	<style type="text/css">
		.objects{
			float: right;
			margin-left: none;
			margin-right: 270px;
		}
		#btn1{
			padding:none;
			width: 600px;
		}
		#btn2{
			padding:none;
			width: 600px;
		}
		#btn3{
			padding:none;
			width: 600px;
		}
		.naveridimg{
			margin: none;
		}
		#header{
			border: 1px solid black;
			height: 20px;
			padding: 20px;
		}
		#header_findid{
			float: left;
			margin-right: 60px;
		}
		#order{
			margin-left: 500px;
		}
		
	</style>
	
	<script type="text/javascript">
	
		
	</script>
		<div id="header">
			<div id="header_findid">아이디 찾기</div>
			<div id="header_findpwd">비밀번호 찾기</div>
		</div>
	<br>	
	<br>	
	
</head>
<body>
	<div id="pannel_header">
		<div style="float: left;">비밀번호 찾기</div>
		<div id="order">01. 아이디 입력>02. 본인 확인>03. 비밀번호 재설정</div>
		<div style="border: 1px solid black;"></div>
		<div>비밀번호를 찾을 방법을 선택해 주세요!!!</div>
	</div>
	<br>
	<div id="firstPannel">
		<input type="radio">회원정보에 등록한 휴대전화로 인증(***-****-****)
		<div>회원정보에 등록한 휴대전화 번호와 입력한 휴대전화 번호가 같아야, 인증번호를 받을 수 있습니다.</div>
		<br>
<!-- 		<div id="nameWrapper"> -->
			
<!-- 		</div> -->
		<div id="phonNumWrapper">
			<form method="post" action="../FindPwd">
				이름<input type="text" id="inputName" name="user_name">
				<br>
				휴대전화<select name="identifyPhoneNuM">
				<option value="">+82 대한민국</option>
				</select>
				
				<input placeholder="휴대전화번호" id="phoneNum" name="phoneNum">
				<input type="submit" id="authSub" value="인증번호 받기" name="id">
<%-- 			<%=request.getAttribute("id")%> --%>
				${pwd}
			</form>
		</div>
		<div>
			<input value="인증번호 6자리 숫자 입력">
		</div>
		<div>인증번호가 오지 않나요?</div>
	</div>
	<br>
	<br>
	<br>
	<div id="secondPannel">
		<div>등록한 회원정보로 찾기 어려우시면, 본인 확인 후 비밀번호를 찾아드립니다.</div>
		<br>
		<input type="radio"> 본인 명의 휴대전화로 인증(본인 주민등록번호로 가입된 휴대전화)
		<br>
		<br>
	</div>
	<button type="button" style="background-color: white; border: 1px solid gray;">다음</button>
	<br>
	<br>
	<br>
	<div id="footer">
		<div>비밀번호 찾기 시 문제가 있나요? 바로가기</div>
	</div>
</body>

</html>
