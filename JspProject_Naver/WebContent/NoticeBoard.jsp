<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<style type="text/css">
	table th{
		border: 1px solid blue;
		border-collapse: collapse;
	}
	#parent_div{
		margin-left: 490px;
		margin-right: 490px;
	}
</style>
<script type="text/javascript">
	
</script>
</head>

	<div id="parent_div">
		<h3>List Sample</h3>
		<div id="form_div">
			<form action="post" style="text-align: right">
			<select >
				<option value="title">제목</option>
				<option value="contents">내용</option>
				<option value="writer">글쓴이</option>
			</select> <input type="text"> <input type="button" value="검색">
			</form>
		</div>
		<div id="table_div">
			<table>
				<tr>
					<th colspan="2">번호</th>
					<th colspan="10">제목</th>
					<th colspan="30">내용</th>
					<th colspan="10">날짜</th>
					<th colspan="5">글쓴이</th>
				</tr>
				<tr>
					<td colspan="2">1</td>
					<td colspan="10">나는 집에 가고 싶다 진짜</td>
					<td colspan="30">나는 집에 가고 싶은 이유는 이러하다아니 얼마나 써야되는 거야 짜증나게 ....</td>
					<td colspan="10">2023-08-09</td>
					<td colspan="5">임찬우</td>
				</tr>
			</table>
			<a href="" style="margin-left: 450px;">1</a>
		</div>
		<div>
			<button>글 쓰기</button>
		</div>
	</div>

<body>

</body>
</html>