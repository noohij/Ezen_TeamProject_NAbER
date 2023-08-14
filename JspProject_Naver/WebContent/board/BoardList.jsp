<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<style type="text/css">
	table{
		border: 1px solid blue;
 		border-collapse: collapse; 
	}
	th{
		border: 1px solid blue;
 		border-collapse: collapse; 
	}
	tr td{
		border: 1px solid blue;
 		border-collapse: collapse;
	}
	#parent_div{
		margin-left: 490px;
		margin-right: 490px;
	}
	#contents_td{
		width: 480px;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
	}
	
</style>
<script type="text/javascript">
	var num = 0;
	function pagingFnc(x) {
// 		alert(x.innerHTML);
		num = x;

	}
</script>
</head>
	<c:set var="num" value="num" scope="page"></c:set>
<body>
	<div id="parent_div">
		<h3>List Sample</h3>
		<div id="form_div">
			<form action="./list" method="post" style="text-align: right">
			<select name="searchType">
				<option value="title">제목</option>
				<option value="contents">내용</option>
				<option value="writer">글쓴이</option>
			</select> <input type="text" name="searchType"> 
			<input type="button"
				 onclick="switchText();" value="검색">
			</form>
		</div>
		<div id="table_div">
			<table>
				<tr>
					<th style="width: 50px;">번호</th>
					<th style="width: 150px;">제목</th>
					<th style="width: 480px;">내용</th>
					<th style="width: 50px;">글쓴이</th>
					<th style="width: 90px;">작성일</th>
					<th style="width: 90px;">수정일</th>
				</tr>
				<c:set var="pagesSet" value="9" scope="request"/>
				
				<c:forEach var="boardDto"
					items="${boardList}" 
						begin="${pagesSet - 9}" end="${pagesSet}">
					<tr>
						<td style="width: 50px;">${boardDto.bno}</td>
						<td style="width: 150px;">${boardDto.title}</td>
						<td id="contents_td">
							<a href="./view?bno=${boardDto.bno}">
						${boardDto.contents}</a></td>
						<td style="width: 50px;">${boardDto.user_name}</td>
						<td style="width: 90px;">${boardDto.mod_date}</td>
						<td style="width: 90px;">${boardDto.cre_date}</td>
					</tr>
				</c:forEach>
			</table>
			<div style="margin-left: 400px;">
				<form action=".list" method="post">
					<c:forEach var="pagesNum" begin="1" end="${pages}">
					<input>
					<a onclick="pagingFnc(this);">${pagesNum}</a>
				
					</c:forEach>
				</form>
			</div>
		</div>
		<div>
			<button id="BoardAdd_Button" 
				onclick="location ='./add'">글 쓰기</button>
		</div>
	</div>
</body>
</html>