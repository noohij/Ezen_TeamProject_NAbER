<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Header.jsp</title>
	
	<style type="text/css">
		div div{
			display : inline-block;
		}
	</style>
	<script type="text/javascript">
 		
	</script>
</head>

<body>
	<div id="parent_div">
		<div style="width: 400px;">
			<img src="../images/naverLogo.PNG" alt="네이버 로고"
				style="width: 150px; height: 50px;" onclick="location ='./board/list'">
		</div>
		<div style="width: 400px; text-align: right; float: right;">
			${sessionScope.member.name}님
			
			<button>로그아웃</button>
		</div>
	</div>
</body>
</html>