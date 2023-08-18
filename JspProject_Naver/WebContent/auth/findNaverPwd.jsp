<%@page import="java.io.Console"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>
		Insert title here
	</title>
	<style type="text/css">
		.objects{
			float: right;
			margin-left: none;
			margin-right: 270px;
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
		#pannel_header{
			margin-top: 100px;
		}
		
	</style>
	
	<script type="text/javascript">
	
		
	</script>
</head>
<body style="margin-left: 550px;">
	<div id="pannel_header">
		<div style="float: left;">비밀번호 찾기</div>
		<div id="order">01. 아이디 입력>02. 본인 확인>03. 비밀번호 재설정</div>
		<div style="border: 1px solid black; width: 880px;"></div>
		<div style="margin-top: 10px;">비밀번호를 찾을 방법을 선택해 주세요!!!</div>
	</div>
	<br>
	<div id="firstPannel" style="border: 1px solid gray; width: 550px; height: 100px;">
		<input type="radio">회원정보에 등록한 휴대전화로 인증(***-****-****)
		<br>
<!-- 		<div id="nameWrapper"> -->
			
<!-- 		</div> -->
		<div id="phonNumWrapper">
			<form method="post" action="../FindPwd">
				
<%-- 			<%=request.getAttribute("id")%> --%>
				${pwd}
			</form>
		</div>
		<div>
		</div>
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
