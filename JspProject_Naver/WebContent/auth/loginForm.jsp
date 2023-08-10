<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
		
	<style>
		
		header{
			width: 1365px;
		}
		.inheader{
			width: 743px;
		}
		#id input:focus{
			border-color: rgb(3, 199, 90);			
			outline: none;
		}
		
		#password input:focus{
			border-color: #2DB400;			
			outline: none;
		}
		table{
			 border: 1px solid gray;
		}
		td{
 			border-right: 1px solid gray; 
		}
	</style>	
	<script type="text/javascript">
		
	</script>
	
</head>
<body>

<div>
	<header href="#">
		<div class="inheader">	
			<img src="../images/네이버.PNG"
		 	width="168" height="50" alt="로고"> <br> <br> <br>
		</div>
	</header>
			<div><img src="../images/id옆 이동 문양.PNG" width="20">ID 로그인
			</div>
			<div><img src="../images/일회용.PNG" width="20" id="no">
			일회용번호</div>
			<div><img src="../images/큐알.PNG" width="20">QR코드</div>
			<div><img src="../images/아이디 사람.PNG" width="20"
				style="float: left;"></div>
			<div colspan="3">
			<div id="id">
				<input type="text" placeholder="아이디">
			</div>
			</div>
			<div><img src="../images/비밀번호 잠금.PNG" width="20"
				style="float: left;"></div>
			<div colspan="3">
			<div id="password">
				<input type="text" placeholder="비밀번호">
			</div>
			</div>
			<div>
				<input type="checkbox" name="">
			</div>
</div>
</body>

</html>
