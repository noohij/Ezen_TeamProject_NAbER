<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세</title>
<style type="text/css">
	table tr td{
		border: 1px solid black;
		border-collapse: collapse;
	}
	#parent_div{
		margin-left: 490px;
		margin-right: 490px;
	}
	#aTag_div{
		border: 1px solid black;
	}
	input{
		
	}
	textarea{
		 width: 750px;
		 height: 600px;
		 resize: none;
	}
</style>
<script type="text/javascript">
	
</script>
</head>

	<div id="parent_div">
		<h3 style="text-align: center;">글 쓰기</h3>
		<div id="aTag_div">
			<a href="./list" style="margin-left: 850px;">글 목록</a>
		</div>
		<form action="add" method = "post">
			<div id="table_div">
		
			<table>
				<tr>
					<td style="width: 100px;">이름</td>
					<td style="width: 870px;"><input ></td>
				</tr>
				<tr>
					<td>제목</td>
					<td ><input style="width: 700px;" ></td>
				</tr>
				<tr>
					<td>Email</td>
					<td ><input style="width: 700px;"  ></td>
				</tr>
				<tr style="height: 600px;">
					<td>내용</td>
					<td ><textarea ></textarea>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td ><input style="width: 100px;"></td>
				</tr>
				
			</table>
			<div>
				<input type='submit' value='글쓰기'>
				<input type='reset' value='다시작성'>
				<input type="button" value="목록보기">
			</div>
		</div>
		</form>
	</div>

<body>

</body>
</html>