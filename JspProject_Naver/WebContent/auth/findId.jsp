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
	.pannel div button{
		width: 600px;
		height: 70px;
		background-color: white;
		border: 1px solid #03c75a; border-radius: 7px;
		margin-bottom: 20px;
		font-weight: bold; font-size: 18px;
		padding-left: 20px;
		text-align: left;
		}
		
		.naveridimg{
			margin: none;
		}
		img{
			float: left;
		}
		.pannel{
			margin-left: 630px;
		}
	</style>
	
	<script type="text/javascript">
	
	</script>
<div id="header" style="margin-left: 850px; margin-top: 100px">
	<a class="inheader"  href="../auth/loginForm">
		<img src="../images/naverLogo.PNG"
	 	width="168" height="50" alt="로고" class="logo" >
	 </a>
	 <br>
	 <br>
	 <br>
	 <h2 id="findId" style="margin-left: -90px;">찾으려는 아이디를 선택해주세요.</h2>
	 <br>
	 <br>
</div>
</head>
<body>
	<div class="pannel">
		<div>
			<button type="button" id="btn1" onclick="location.href='./findNaverId.jsp'">
				<img src="../images/id.PNG" width="30px" class="naveridimg">
				<div class="objects">네이버 아이디</div>
			
			</button>
		</div>
		<div>
			<button id="btn2">
				<img src="../images/id.PNG" width="30px" class="naveridimg">
				<div class="objects">로그인 전용 아이디</div>
			
			</button>
		</div>
		<div>
			<button id="btn3">
				<img src="../images/id.PNG" width="30px" class="naveridimg">
				<div class="objects">
					단체아이디<span style="color:gray; margin-left: 30px;
					font-weight: lighter;">(신) 단체아이디만 찾을 수 있습니다.
					<a herf="" style="margin-left: 8px; text-decoration: underline;
					font-weight: lighter;">도움말</a>
					</span>
					
				</div>
			
			</button>
		</div>
	</div>
	
	<div style="margin-left: 840px; margin-top: 50px; color: gray;">NAVER | 회원정보 고객센터</div>
</body>

</html>
