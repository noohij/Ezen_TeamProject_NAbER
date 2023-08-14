<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
		
	<style>
		
		.container{
			width: 1365px;
			height: 529px;
			
		}
		header{
			width: 1365px;
			height: 60px;
			padding-bottom: none;
		}
		.inheader{
			width: 743px;
		}
		.container{
			margin-top: 3px; 
		}
		.language{
			float: right;
			margin-right: 800px; 
		}
		.logo{
			margin-left: 135px;
		}
		#id input:focus{
			border-color: rgb(3, 199, 90);			
			outline: none;
		}
		
		#password input:focus{
			border-color: #2DB400;			
			outline: none;
		}
		.menuwrapper{
			width: 550px;
			height: 41px;
		}
		.menuwrap{
			list-style-type: none;
			padding-left: 0; 
			margin-left: 20px;
		}
		.menuwrap>li{
			float: left;
			width: 140px;
			height: 31px;
			text-align:center;
			border: 1px solid gray;
			border-right: none;
		}
		.panel{
			width: 460;
			height: 257;
			float: left;
		}
		.idput{
			padding-left: 30px;
			width: 350px;
			height: 24px;
			margin-left: 40px;
			border: 1px solid gray;
			border-radius: 4px;
		}
		.pwdput{
			padding-left: 30px;
			width: 350px;
			height: 24px;
			margin-left: 40px;
			border-top: none;
			border-bottom: 1px solid gray;
			border-left: 1px solid gray;
			border-right: 1px solid gray;
			border-radius: 4px;
		}
	
		img{
			margin-top: 6px;
			float: left;
			margin-right: none;
			margin-left: 20px;
		}
 		.loginmenutxt{ 
 			margin-top: 4px; 
 			margin-right: 18px;
 		} 
 		.keepcheck{
 			margin-left: 16px;
 			margin-right: 204px;
 		}
 		footer>ul>li{
 			float:left;
 			list-style-type: none;
 			margin-right: 5px;
 		}
 		.copyright{
 			clear: both;
 		}
	</style>	
	<script type="text/javascript">
		
			
		function reset() {
			
			var idPutObj = document.getElementById("id");
			var pwdPutObj = document.getElementById("pwd");
			
			idPutObj.value = "";
			pwdPutObj.value = "";
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
	
<div class="container" style="border: 1px solid black;">

	
	<div class="menuwrapper">
		<ul class="menuwrap">
			<li>
				<img src="../images/loginById.PNG" width="20">
				<div class="loginmenutxt">ID 로그인</div>
			</li>
			<li>
				<img src="../images/loginByTempCode.PNG" width="20">
				<div class="loginmenutxt">일회용번호</div>
			</li>
			<li>
				<img src="../images/loginByQrCode.PNG" width="20">
				<div class="loginmenutxt">QR코드</div>
			</li>
		</ul>
	</div>
<br>
	<div class="panel">
		<div>
			<form action="../loginForm" method="post">
				<input type="text" class="idput" id="id" placeholder="아이디" name="id"
				style="background-image:url('../images/id.PNG'); background-repeat: no-repeat;">
		<div>
				<input type="text" class="pwdput" id="pwd" placeholder="비밀번호" name="pwd"
				style="background-image:url('../images/lock.PNG');
				background-repeat: no-repeat;">
		</div>
			<label class="keepcheck">
				<input type="checkbox" id="keeping" name="keep" value="off">
					로그인 상태 유지
				<%
					session.getAttribute("errormsg");
				%>
				
				</label>
				<label class="keepcheck2"> IP보안
					<input type="checkbox" id="switch">
				 	<span class="onf_btn"></span>
			 	</label>
			 	<br>
			 	<br>
			 	<input type="submit" value="로그인">
			</form>
		</div>
	</div>
	
 	<br>
 	<br>
 	<br>
 	<br>
 	<br>
 	<br>
 	
 	<button>비밀번호 찾기</button>
 	<button>아이디 찾기</button>
 	<button>회원가입</button>
	<br>
	<img alt="배너" src="../images/loginBanner.PNG" class="banner">
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<footer>
		<ul>
			<li>이용약관</li>
			<li>|</li>
			<li>개인정보처리방침</li>
			<li>|</li>
			<li>책임의 한계와 법적고지</li>
			<li>|</li>
			<li>회원정보 고객센터</li>
			<li>|</li>
		</ul>
		<div class="copyright">
			NAVER Copyright &copy; NAVER Corp. All Rights Reserved.
		</div>	
	</footer>

	
	
	
		
		
			
</div>
</body>

</html>
