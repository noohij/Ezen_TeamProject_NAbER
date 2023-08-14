<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
</script>
</head>

	<div id="parent_div">
		<h3 style="text-align: center;">글 쓰기</h3>
		<div id="table_div">
			<table>
				<tr>
					<td id="boardListViewLink" colspan="2">
						<a href="./list">글 목록</a>
					</td>
				</tr>
				<tr>
					<td class="subjectClass" style="width: 100px;">이름</td>
					<td class="textClass" style="width: 870px;">
						<input  readonly="readonly" 
							value="${boardDto.user_name}">
					</td>
				</tr>
				<tr>
					<td class="subjectClass">제목</td>
					<td class="textClass">
						<input style="width: 700px;"
							 readonly="readonly" value="${boardDto.title}">
					</td>
				</tr>
				<tr>
					<td class="subjectClass">Email</td>
					<td class="textClass">
						<input style="width: 700px;" readonly="readonly"
							value="${boardDto.user_email}">
					</td>
				</tr>
				<tr style="height: 600px;">
					<td class="subjectClass">내용</td>
					<td class="textClass">
						<textarea readonly="readonly">${boardDto.contents}
						</textarea>
					</td>
				</tr>
				<tr>
					<td class="subjectClass">비밀번호</td>
					<td class="textClass">
						<input type="password" maxlength="4" style="width: 100px;">
					</td>
				</tr>
				<tr>
					<td colspan="2" style="padding-left: 350px;">
					<input type="button" value="글쓰기">
					<input type="button" value="다시작성">
					<input type="button" value="목록보기">
					</td>
				</tr>
			</table>
			
		</div>
	</div>

<body>

</body>
</html>