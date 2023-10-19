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
			margin-top: 100px;
		}
		.objects{
			float: right;
			margin-left: none;
			margin-right: 270px;
		}
		#firstPannel{
			border: 1px solid black;
			width: 670px;
			height: 313px;
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
			border: 1px solid black;
			width: 670px;
			margin-left: 600px;
			margin-bottom: 20px;
		}
		#phonNumWrapper{
			margin-left: 23px;
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
	<div id="firstPannel" style="margin-top: -50px;">
		<input type="radio" style="margin-left: 20px; margin-top: 40px; float: left;">
		<div style="margin-top: 36px; font-weight: bold;">회원정보에 등록한 휴대전화로 인증</div>
		<div style="color:gray; font-size: 13px; margin-left: 24px; margin-top: 5px;">
		회원정보에 등록한 휴대전화 번호와 입력한 휴대전화 번호가 같아야, 인증번호를 받을 수 있습니다.
		</div>
		<br>
		<div id="phonNumWrapper">
			<form method="post" action="../FindNaverId">
			<div style="float: left; font-weight: bold;">이름</div>
			<input type="text" id="inputName" name="user_name" style="margin-left: 70px;">
			<br>
			<div style="float: left; font-weight: bold; margin-top: 10px;">휴대전화</div>
			<select name="identifyPhoneNuM" style="margin-left: 38px">
			<option value="">+82</option>
			</select>
			<input placeholder="휴대전화번호" id="phoneNum" name="phoneNum" style="width: 116px;
			margin-top: 10px;">
			<input type="submit" id="authSub" value="인증번호 받기" name="id" style="font-weight: bold;">
			
<%-- 			<%=request.getAttribute("id")%> --%>
				${id}
			</form>
		</div>
		<div>
			<input placeholder="인증번호 6자리 숫자 입력" style="margin-left: 125px; margin-top: 10px;">
		</div>
		<div style="margin-left: 125px; margin-top: 10px; color:gray; font-size: 13px;">
		인증번호가 오지 않나요?</div>
		<br>
		<br>
		<input type= "radio" style="margin-left: 24px; float: left;">
		<div style=" margin-top: -2px; font-weight: bold;">본인확인 이메일로 인증</div>
		
	</div>
	<br>
	<br>
	<br>
	<div id="secondPannel">
		<div style="margin-top: 30px; margin-left: 30px; font-weight: bold;">
		등록한 회원정보로 찾기 어려우시면, 본인 확인 후 아이디를 찾아드립니다.
		</div>
		<br>
		<input type="radio" style="margin-left: 30px; margin-top: 5px; float: left;"> 
		<div style="font-weight: bold; float: left;">본인 명의 휴대전화로 인증</div>
		<div style="font-weight: bold; color: gray;">(본인 주민등록번호로 가입된 휴대전화)</div>
		<br>
		<input type="radio" style="margin-left: 30px; margin-top: 5px;
		 margin-bottom: 30px; float: left;">
		 <div style="font-weight: bold;">아이핀 인증</div>
		<br>
	</div>
	<a href="./loginForm.jsp" style="background-color: white; border: 1px solid gray;
	margin-left: 910px;color: black; width: 200px; height: 80px;">다음</a>
	</div>
	<br>
	<br>
	<br>
	<div id="footer" style="margin-left: 600px; color:gray; font-size: 13px;">
		<div style="float: left; margin-right: 10px;">
		아이디 찾기에 어려움이 있으신가요? </div>
		<div style=" text-decoration: underline;">도움말 펼치기</div>
		<div style="float: left; margin-right: 10px;">아이디 찾기 시 문제가 있나요?</div> 
		<div style=" text-decoration: underline;">바로가기</div>
	</div>
</body>

</html>
