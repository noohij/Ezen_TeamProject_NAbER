<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>네이버 : 로그인</title>
		 
	<style>
		
		header{
			width: 1365px;
			height: 180px;
			margin-left: 100px;
		}
		.language{
			float: right;
			margin-right: 100px;
			margin-top: 20px; 
		}
		.logo{
 			margin-top:100px; 
  			margin-left: 725px;
		}
		.container{
			width: 743px;
			height: 529px;
			margin-left: 700px;
		}
		#pannel{
			width: 460px;
			height: 350px;
			border-top: none; border-left: 1px solid gray; border-right: 1px solid gray;
			border-bottom: 1px solid gray;
			border-radius: 5px;
			
		}
		input:focus{
			border-color: #03c75a;		
			outline: none;
		}
		#password input:focus{
			border-color: #03c75a;			
			outline: none;
		}
		.idput{ width: 380px; height: 48px;
			padding-left: 30px; margin-left:25px;
			margin-right:10px;
			border: 1px solid gray; border-radius: 4px;
		}
		.pwdput{ width: 380px; height: 48px;
			padding-left: 30px; margin-left:25px; margin-bottom: 10px;
			border-top: none; border-bottom: 1px solid gray;
			border-left: 1px solid gray; border-right: 1px solid gray;
			border-radius: 4px;
		}
		#loginButton{
			margin-top: 40px;
			margin-left: 28px;
			width: 402px; height: 52px;
			background-color: #03c75a;;
			border: none; border-radius: 7px;
			font-size: 20px; color: white;
		}
		img{ float: left;
			margin-top: 6px;
			margin-right: 2px;
			margin-left: 20px;
		}
 		.keepcheck{ margin-left: 16px; margin-right: 204px;
 		}
 		#link{
 			margin-left: -40px;
 		}
 		.link2{
 			float: left; margin-left: 5px;
 		
 		}
 		.copyright{
 			margin-left:40px;
 			clear: both;
 		}
 		.findpwd{
 			float: right;
 		}
 		.banner{
 			margin: auto;
 		}
 		.overBanner{
 			margin-bottom:30px;
 			margin-left: 95px;
 		}
 		body {
			height: 2000px;
		}
		#form{
		}
		.loginmenutxt{ 
			padding-top:15px;
 			width:153.33px;
 			height:40px;
 			margin-right: 18px;
 			margin-bottom: 20px;
 		} 
		#idLogin{
			border-bottom: none; border-top: 1px solid gray;
			border-radius: 5px; float: left;
			margin-right: -1px;
		}
		#tempNum{ border: 1px solid gray;border-radius: 5px; float: left; margin-right: -1px;
		}
		#QRCode{ border-bottom:1px solid gray; border-bottom:1px solid gray; border-top:1px solid gray;		
		border-radius: 5px; float: left; margin-right: -1px;
		}
		#tab{
			height: 70px;
			width: 1300px;
			margin-bottom: 20px;
		}
	</style>	
	<script type="text/javascript">
		
			
		function reset() {
			
			var idPutObj = document.getElementById("id");
			var pwdPutObj = document.getElementById("pwd");
			
			idPutObj.value = "";
			pwdPutObj.value = "";
		}	
		
	function idCheckFnc() {
	   		
	   		var idInputObj = document.getElementById("id");
	   		var pwdInputObj = document.getElementById("pwd");	   		
	   		var noIdErrorObj = document.getElementById("noIdError");
	   		var noPwdErrorObj = document.getElementById("noPwdError");
			
			if (idInputObj.value == "") {
				noIdErrorObj.setAttribute("style", "display: block");
				noPwdErrorObj.setAttribute("style", "display: none");
			} else if (pwdInputObj.value == "") {
				noIdErrorObj.setAttribute("style", "display: none");
				noPwdErrorObj.setAttribute("style", "display: block");
			} else {
				noIdErrorObj.setAttribute("style", "display: none");
				noPwdErrorObj.setAttribute("style", "display: none");
			}
		} 
	
	</script>

<header>
	<div id="logo">
		<img src="../images/naverLogo.PNG"
	 	width="168" height="50" alt="로고" class="logo" onclick="reset()">
	</div>
	 	<select class="language">
		<option>한국어</option>
		<option>English</option>
		<option>中文(简体)</option>
		<option>中文(台灣)</option>
		
		</select>
		
</header>
</head>
<body>

<div class="container">
	<div id="pannel">
	<div id="tab">
		<div class="loginmenutxt" id="idLogin">ID 로그인
			<img src="../images/loginById.PNG" width="20">
		</div>
		<div class="loginmenutxt" id="tempNum">일회용번호
			<img src="../images/loginByTempCode.PNG" width="20">
		</div>
		<div class="loginmenutxt" id="QRCode">QR코드
			<img src="../images/loginByQrCode.PNG" width="20" style="margin-top: 4px;">
		</div>
	</div>
	<div>
		<form action="./loginForm" method="post">
		<div id="loginwrapper">
			<input type="text" class="idput" id="id" placeholder="아이디" name="id"
			style="background-image:url('../images/id.PNG'); background-repeat: no-repeat;"
			maxlength="41" onblur="idCheckFnc();">
		<br>	
			<input type="password" class="pwdput" id="pwd" placeholder="비밀번호" name="pwd"
			style="background-image:url('../images/lock.PNG');
			background-repeat: no-repeat;" maxlength="16" onblur="idCheckFnc();">
		<br>
		</div>
		<label class="keepcheck">
			<input type="checkbox" id="keeping" name="keep" value="off">
				로그인 상태 유지
		</label>
			<label class="keepcheck2"> IP보안
				<input type="checkbox" id="switch">
			 	<span class="onf_btn"></span>
		 </label>
		 <br>	
		 <input type="submit" value="로그인" id="loginButton" onclick="idCheckFnc()">
	
	</div>

		<div id="error" class="error-message" style="display: none;">
          		 로그인 실패 시 아이디 또는 비밀번호를 확인해주세요.
       	</div>
		<div id="noIdError" class="error-message" style="display: none;">
			 아이디를 입력해 주세요.
		</div>
		<div id="noPwdError" class="error-message" style="display: none;">
			 비밀번호를 입력해 주세요.
		</div>
	</form>
<%-- 			  <p>${sessionScope.message}</p> --%>
			
<%-- 				<%=request.getAttribute("error") %> --%>
			
<%-- 			<% String error = (String) request.getAttribute("error"); %> --%>
<%-- 			<% if (error == null) { %> --%>
<!-- 			<div class="error-message"> -->
<%-- 			    ${error} --%>
<!-- 			</div> -->
<%-- 			<% } %> --%>
 	<br>
 	<br>
 	<br>
 	
 	<div class="overBanner">
	 	<a id="findpwd" onclick="location.href='./findPwd.jsp'" style="color: gray;">비밀번호 찾기 |</a>
	 	<a type="button" id="findId" onclick="location.href='./findId.jsp'" style="color: gray;">아이디 찾기 |</a>
	 	<a type="button" class="joinBtn" onclick="location.href='../join/agree'" style="color: gray;">회원가입</a>
	</div>
	<img alt="배너" src="../images/loginBanner.PNG" class="banner">
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	<footer>
		<div id="link" class="link2" style="color: gray;">이용약관 | </div>
		<div class="link2" style="color: gray; font-weight: bold;">개인정보처리방침 | </div>
		<div class="link2" style="color: gray;">책임의 한계와 법적고지 | </div>
		<div class="link2" style="color: gray;">회원정보 고객센터</div>
		<div class="copyright">
			NAVER Copyright &copy; NAVER Corp. All Rights Reserved.
		</div>	
	</footer>

	
	
	
		
		
			
</body>

</html>
