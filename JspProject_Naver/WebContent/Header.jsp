<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Header.jsp</title>
	
	<style type="text/css">
		#HeaderParent_div{
		margin-left: 490px;
		margin-right: 490px;
		}
		div div{
			display : inline-block;
		}
		#logoutButton{
			background-image: linear-gradient(#dae6ec , #c2d0db);
			border: 0.1px solid black;
			border-radius: 3px;
			
		}
		#logoutChecked_true{
			color: green;
			font-size: 20px;
			width: 150px;
			height: 80px;
			text-align: left;
			background-image: url("../images/logoutTrue.PNG");
			background-size: cover;
		}
		
		#logoutChecked_false{
			color: green;
			font-size: 20px;
			width: 150px;
			height: 80px;
			text-align: left;
			background-image: url("../images/logoutFalse.PNG");
 			background-size: cover;
		}
	</style>
	<script type="text/javascript">
 		function checkLogoutFnc() {
			var logoutChecked_trueObj
				= document.getElementById("logoutChecked_true");
			var logoutChecked_falseObj
			= document.getElementById("logoutChecked_false");
			
			logoutChecked_trueObj.setAttribute("style", "display:inline");
			logoutChecked_falseObj.setAttribute("style", "display:inline");
		}
 		
 		function disappearFnc() {
 			var logoutChecked_trueObj
			= document.getElementById("logoutChecked_true");
			var logoutChecked_falseObj
			= document.getElementById("logoutChecked_false");
			
			logoutChecked_trueObj.setAttribute("style", "display:none");
			logoutChecked_falseObj.setAttribute("style", "display:none");
		}
	</script>
</head>

<body>
	<div id="HeaderParent_div">
		<div style="width: 400px;">
			<img src="../images/naverLogo.PNG" alt="네이버 로고"
				style="width: 150px; height: 50px;" onclick="location ='./list'">
		</div>
		<div style="width: 400px; text-align: right; float: right;">
			
			<form>
			${sessionScope.member.name}님
			<input id="logoutButton" type="button"
				value="로그아웃" onclick="checkLogoutFnc();">
			</form>
			<label for="logoutButton">
				<button id="logoutChecked_true" style="display: none;"
					onclick="location ='../auth/logout'">예</button>
				<button id="logoutChecked_false" style="display: none;"
					onclick="disappearFnc();">아니오</button>
			</label>
		</div>
	</div>
</body>
</html>