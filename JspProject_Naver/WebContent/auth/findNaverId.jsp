<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>
		네이버 : 아이디 찾기
	</title>
	<style type="text/css">
		#pannel_header{
			width: 700px;
			margin-left: 600px;
		}
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
		
		#firstPannel{
			margin-left: 600px;
		}
		#secondPannel{
			margin-left: 600px;
		}
		
	</style>
	
	<script type="text/javascript">
	
		
	</script>	
	
</head>
<body>
	<div id="pannel_header">
		<div style="font-weight: bold;">아이디 찾기</div>
		<div style="border: 1px solid black;"></div>
		<div>아이디 찾는 방법을 선택해 주세요.</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div id="firstPannel">
		<input type="radio">회원정보에 등록한 휴대전화로 인증
		<div>회원정보에 등록한 휴대전화 번호와 입력한 휴대전화 번호가 같아야, 인증번호를 받을 수 있습니다.</div>
		<br>
		<div id="phonNumWrapper">
			<form method="post" action="../FindNaverId">
			이름<input type="text" id="inputName" name="user_name" style="margin-left: 70px;">
			<br>
			휴대전화<select name="identifyPhoneNuM" style="margin-left: 38px">
			<option value="">+82</option>
			</select>
			<input placeholder="휴대전화번호" id="phoneNum" name="phoneNum" style="width: 116px;">
			<input type="submit" id="authSub" value="인증번호 받기" name="id">
<%-- 			<%=request.getAttribute("id")%> --%>
				${id}
			</form>
		</div>
		<div>
			<input value="인증번호 6자리 숫자 입력">
		</div>
		<div>인증번호가 오지 않나요?</div>
		<br>
		<br>
		<input type= "radio">본인확인 이메일로 인증
		
	</div>
	<br>
	<br>
	<br>
	<div id="secondPannel">
		<div>등록한 회원정보로 찾기 어려우시면, 본인 확인 후 아이디를 찾아드립니다.</div>
		<br>
		<input type="radio"> 본인 명의 휴대전화로 인증(본인 주민등록번호로 가입된 휴대전화)
		<br>
		<div>아이핀 인증</div>
		<br>
	</div>
	<button type="button" style="background-color: white; border: 1px solid gray;
	margin-left: 900px">다음</button>
	<br>
	<br>
	<br>
	<div id="footer" style="margin-left: 600px;">
		<div>아이디 찾기에 어려움이 있으신가요? 도움말 펼치기</div>
		<div>아이디 찾기 시 문제가 있나요? 바로가기</div>
	</div>
</body>

</html>
