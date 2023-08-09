<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<style type="text/css">
table tr td {
	border: 1px solid blue;
	border-collapse: collapse;
}
</style>
<script type="text/javascript">
	
</script>
</head>
<h3>List Sample</h3>
	<div>
		<form action="" style="text-align: right;">
			<select>
				<option value="title">제목</option>
				<option value="contents">내용</option>
				<option value="writer">글쓴이</option>
			</select> <input type="text"> <input type="button" value="검색">
		</form>
		<table>
			<tr>
				<td colspan="2">번호</td>
				<td colspan="4">제목</td>
				<td colspan="10">내용</td>
				<td colspan="4">날짜</td>
				<td colspan="4">글쓴이</td>
			</tr>
			<tr>
				<td colspan="2">1</td>
				<td colspan="4">나는 집에 가고 싶다</td>
				<td colspan="10">나는 집에 가고 싶은 이유는 이러하다....</td>
				<td colspan="4">2023-08-09</td>
				<td colspan="4">임찬우</td>
			</tr>
		</table>
	</div>

<body>

</body>
</html>