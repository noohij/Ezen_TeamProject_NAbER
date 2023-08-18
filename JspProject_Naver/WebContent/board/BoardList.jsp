<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 : 게시판 쓰기</title>
<style type="text/css">
	table{
		border: 1px solid gray;
 		border-collapse: collapse;
 		text-align: center;
 		
	}
	th{
		border: 1px solid gray;
 		border-collapse: collapse;
 		background-image: linear-gradient(#dae6ec 50%, #c2d0db 50%); 
	}
	tr td{
		border: 1px solid gray;
 		border-collapse: collapse;
 	}
	#icon_div{
		float:left;
		border-radius:20px;
		background:#6fcdc5;
		width:4px;
		height:20px;
 		border-bottom:2px solid #4a9392;
 		border-right:2px solid #4a9392; 
		box-shadow:1px 1px 1px 1px #75d9cf inset, 1px 1px 1px 1px #dce4f1;
 	}
	#BoardListParent_div{
		margin-left: 490px;
		margin-right: 490px;
	}
	#pageDiv{
/* 		margin-top: 100px; */
		 position: fixed;
		 bottom: 350px;
	}
	#title_td{
		overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        max-width: 150px;
	}
	#contents_td{
		width: 480px;
		overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        max-width: 400px;
	}
	#writer_td{
		overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        max-width: 50px;
	}
	.ButtonClass{
		background-image: linear-gradient(#dae6ec , #c2d0db);
		border: 0.1px solid black;
		border-radius: 3px;
	}
	a{
 		width: 480px; 
		text-decoration: none;
		color: black;
	}
	
</style>
<script type="text/javascript">
	function pagingFnc(x) {
		var num = x.innerHTML; 
		location.href = "./list?pages="+ num;
						

	}
	function pagingNextFnc(crrentNum, maxNum) {
// 		alert(crrentNum);
		if (crrentNum < maxNum) {
			location.href = "./list?pages="+ (crrentNum+1);
		}else{
			alert("마지막 페이지 입니다.");
		}
		
	}
	function pagingPrevFnc(crrentNum) {
// 		alert(crrentNum);
		if (1 < crrentNum) {
			location.href = "./list?pages="+ (crrentNum-1);
		}else{
			alert("초기 페이지 입니다.");
		}
		
	}
</script>
</head>

<body>
	<jsp:include page="/Header.jsp"/>
	<div id="BoardListParent_div">
		<div id="icon_div"> &nbsp;&nbsp;
		</div>
		<h3 style="padding-left: 10px;">List Sample</h3>
		<hr>
		<div id="form_div" style="float: right; padding-bottom: 10px;">
			<form action="./search" method="get" style="text-align: right">
			<span style="margin-right: 570px;">최신순</span>
			<select name="searchType">
				<option value="title">제목</option>
				<option value="contents">내용</option>
				<option value="writer">글쓴이</option>
			</select> <input type="text" name="contents"> 
			<input class="ButtonClass" type="submit" value="검색">
			</form>
		</div>
		<div id="table_div">
			<table>
				<tr>
					<th style="width: 50px;">번호</th>
					<th style="width: 150px;">제목</th>
					<th style="width: 480px;">내용</th>
					<th style="width: 70px;">글쓴이</th>
					<th style="width: 90px;">작성일</th>
					<th style="width: 90px;">수정일</th>
				</tr>
<%-- 				<c:set var="pagesSet" value="9" scope="request"/> --%>
				
				<c:forEach var="boardDto"
					items="${boardList}" 
						begin="${pagesSet-10}" end="${pagesSet - 1}">
					<tr>
						<td style="width: 50px;">${boardDto.bno}</td>
						<td id="title_td"
							style="width: 150px;">${boardDto.title}</td>
						<td id="contents_td">
							<a href="./view?bno=${boardDto.bno}">
						${boardDto.contents}</a></td>
						<td id="writer_td"
							style="width: 50px;">${boardDto.user_name}</td>
						<td style="width: 90px;">${boardDto.mod_date}</td>
						<td style="width: 90px;">${boardDto.cre_date}</td>
					</tr>
				</c:forEach>
			</table>
			<div id="pageDiv" style="margin-left: 400px;">
				<a onclick="pagingPrevFnc(${currentPage});"><</a>
					<c:forEach 
						var="pagesNum" begin="1" end="${totalPages}">
					
					<a onclick="pagingFnc(this);">${pagesNum}</a>
					
					</c:forEach>
					<a onclick="pagingNextFnc(${currentPage}
						, ${totalPages});">></a>
			</div>
		</div>
		<div>
			<button id="BoardAdd_Button" class="ButtonClass"
				onclick="location ='./add'">등록</button>
		</div>
		<jsp:include page="/Footer.jsp"></jsp:include>
	</div>
	
</body>
</html>