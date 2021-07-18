<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<h2>게시판 수정 - JSP</h2>
	<hr>
	<div>
		<form action="/margin/board.update.servlet" method="post">
			
			<p><label>작성자</label><input type="text" name="name"></p>
			<p><label>제목</label><input type="text" name="title"></p>
			<p><label>내용</label></p>
			<div><textarea rows="3" cols="70" name="content"></textarea></div>
			<button type="submit">수정</button>
		</form>
		
	</div>
</body>
</html>