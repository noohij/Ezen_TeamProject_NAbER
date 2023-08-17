<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세</title>
<style type="text/css">
	body{
		background-color: #e1ffff;
	}
	table tr td{
		border: 1px solid black;
		border-collapse: collapse;
		background-color: #b0dfe7;
	}
	.subjectClass{
		text-align: center;
	}
	.textClass{
		background-color: #e1ffff;
	}
	#parent_div{
		margin-left: 490px;
		margin-right: 490px;
	}
	#boardListViewLink{
		text-align: right;
	}
	input{
		
	}
	textarea{
		 width: 750px;
		 height: 600px;
		 resize: none;
	}
	a{
		text-decoration: none;
	}
</style>
<script type="text/javascript">
	function checkFnc(event) {
		
		var titleObj 
		 = document.getElementsByClassName("textClass")[1].children[0];
		var contentsObj
		 = document.getElementsByClassName("textClass")[3].children[0];
		var passwordObj
		 = document.getElementsByClassName("textClass")[4].children[0];
		
		if (titleObj.value == "") {
			alert("제목을 입력해주세요");
			titleObj.setAttribute("style"
					, "background-color: #f05650; width: 700px;");
			event.preventDefault();
		}
		if (contentsObj.value == "") {
			alert("내용을 입력해주세요");
			contentsObj.setAttribute("style"
					, "background-color: #f05650;");
			event.preventDefault();
		}
		if (passwordObj.value == "") {
			alert("비밀번호를 설정해주세요");
			passwordObj.setAttribute("style"
					, "background-color: #f05650; width: 100px;");
			event.preventDefault();
		}
	}
	function writeFnc(event) {
		if (event.target.id == "title") {
			event.target.setAttribute("style"
					, "background: white; width: 700px;");
		}
		if (event.target.id == "contents") {
			event.target.setAttribute("style"
					, "background: white;");
		}
		if (event.target.id == "password") {
			event.target.setAttribute("style"
					, "background: white; width: 100px;");
		}
	}
</script>
</head>

	<div id="parent_div">
		<h3 style="text-align: center;">글 쓰기</h3>
		<div id="aTag_div">
			
		</div>
		<form action="add" method = "post">
			<div id="table_div">
		
			<table>
				<tr>
					<td  id="boardListViewLink" colspan="2">
						<a href="./list" style="margin-left: 850px;">글 목록</a>
					</td>
				</tr>
				<tr>
					<td class="subjectClass" style="width: 100px;">이름</td>
					<td class="textClass" style="width: 870px;">
						<input  readonly="readonly" style="width: 200px;"
						  value="${sessionScope.member.name}" name="name">
					</td>
				</tr>
				<tr>
					<td class="subjectClass">제목</td>
					<td class="textClass">
						<input id="title" style="width: 700px;" name="title"
							onclick="writeFnc(event);" >
					</td>
				</tr>
				<tr>
					<td class="subjectClass">Email</td>
					<td class="textClass">
						<input style="width: 700px;" name="email" 
							readonly="readonly" 
							value="${sessionScope.member.email}">
						</td>
				</tr>
				<tr  style="height: 600px;">
					<td class="subjectClass">내용</td>
					<td class="textClass">
					<textarea id="contents" name="contents" 
						onclick="writeFnc(event);"></textarea>
					</td>
				</tr>
				<tr>
					<td class="subjectClass">비밀번호</td>
					<td class="textClass">
						<input id="password" type="password" maxlength="4" 
							style="width: 100px;" name="mod_pwd"
							onclick="writeFnc(event);">
					</td>
				</tr>
				<tr>
				<td colspan="2" style="padding-left: 350px;">
					<input type='submit' onclick="checkFnc(event);"
						value='등록'>
					<input type='reset' value='초기화'>
					<input type="button"
						onclick="location ='./list'" value="목록보기">
				</td>
				</tr>
			</table>
			
		</div>
		</form>
	</div>

<body>

</body>
</html>