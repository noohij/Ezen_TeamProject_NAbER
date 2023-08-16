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
		input:focus {
			outline-color: rgb(3, 199, 90);			
		}
		#naverId {
			margin-top: 4px; 
 			margin-right: 18px;
			padding-left: 50px;
			width: 400px;
			height: 50px;
			background-image: url('../images/loginById.PNG');
			background-repeat: no-repeat;
			background-size: 20px;
			background-position: left;
			border-style: 1px solid;
			border-color: gray;		
			}
		#next{
			font-size:20px;
			
			text-align:center;
			margin-top: 4px; 
 			margin-right: 18px;
			width: 400px;
			height: 50px;
			border:none;
			background-color: rgb(3, 199, 90);		
		}
		#remember{
			padding-right: 10px;
		}
		
	</style>
	
	<script type="text/javascript">
	
	</script>
	<a class="inheader">
		<img src="../images/naverLogo.PNG"
	 	width="168" height="50" alt="로고" class="logo">
	 </a>
	 <br>
	 <br>
	 <br>
	 <div>비밀번호를 찾고자하는 아이디를 입력해주세요.</div>
</head>
<body>
	<br>
	<br>
	<br>
	<div class="panel">
		<input placeholder="네이버 아이디 또는 단체 아이디" id="naverId" name="naverId">
	<div>
			<input type="button" value="다음" id="next" name="next">
			
		</div>
		<div id="atag">
			<div style="float: left;" id="remember">아이디가 기억나지 않는다면?
			</div>
			<a>아이디 찾기</a>
		</div>
	</div>
	
	<div>NAVER | 회원정보 고객센터</div>
</body>

</html>
