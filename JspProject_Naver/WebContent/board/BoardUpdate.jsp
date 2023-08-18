<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 : 게시글 수정</title>
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
	#wrongError{
		color:red;
		border:0px solid;
		background-color: #e1ffff;
		width: 150px;
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
	function checkPwdFnc(password) {
// 		alert(password);
		
	}
	
function checkFnc(event, mod_pwd) {
		
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
		if (passwordObj.value != mod_pwd) {
			var wrongErrorObj 
			= document.getElementById("wrongError");
			wrongErrorObj.setAttribute("style", "display: inline");
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
// 			alert(event.target.id);
			event.target.setAttribute("style"
					, "background: white; width: 100px; float: left;");
		}
	}
	function disappearButtonFnc(buttonObj) {
		buttonObj.setAttribute("style", "display:none");
	}
</script>
</head>

	<div id="parent_div">
		<h3 style="text-align: center;">내용 수정</h3>
		<div id="table_div">
			<form action="./update?bno=${boardDto.bno}" method="post">
				<table>
					<tr>
						<td id="boardListViewLink" colspan="2">
							<a href="./list">글 목록</a>
						</td>
					</tr>
					<tr>
						<td class="subjectClass" style="width: 100px;">이름</td>
						<td class="textClass" style="width: 870px;">
							<input value="${boardDto.user_name}">
						</td>
					</tr>
					<tr>
						<td class="subjectClass">제목</td>
						<td class="textClass">
							<input style="width: 700px;" id="title" 
								name="title" onclick="writeFnc(event);"
								value="${boardDto.title}">
						</td>
					</tr>
					<tr>
						<td class="subjectClass">Email</td>
						<td class="textClass">
							<input style="width: 700px;"
								value="${boardDto.user_email}">
						</td>
					</tr>
					<tr style="height: 600px;">
						<td class="subjectClass">내용</td>
						<td class="textClass">
							<textarea id="contents" name="contents"
							onclick="writeFnc(event);">${boardDto.contents}</textarea>
						</td>
					</tr>
					<tr>
						<td class="subjectClass">비밀번호</td>
						<td class="textClass">
						<input id="password" type="password" maxlength="4" 
							style="width:100px;"
							onclick="writeFnc(event);">
						<input type="button" id="wrongError" style="display: none; height:10px;"
							onclick="disappearButtonFnc(this);" value="비밀번호가 틀립니다.">
						</td>	
					</tr>
					<tr>
						<td colspan="2" style="padding-left: 350px;">
						<input type="submit" 
							onclick="checkFnc(event
							, ${boardDto.mod_pwd});"
							 value="완료">
						<input type="reset" value="초기화">
						<input type="button"
							onclick="location ='./list'" value="목록보기">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>

<body>

</body>
</html>