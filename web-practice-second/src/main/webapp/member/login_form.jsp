<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web Practice</title>
<style type="text/css">
body {
	margin: 0;
}

.header {
	padding: 30px;
	border-bottom: 1px solid black;
}

.container {
	width: 90%;
	margin: 0 auto;
	margin-top: 100px;
}

.content {
	margin: 20px;
}

#loginForm {
	text-align: center;
	border: 1px solid black;
	width: 500px;
	padding-top: 50px;
	padding-bottom: 60px;
	margin: auto;
}

#loginForm table {
	display: inline-block;
	margin-bottom: 20px;
}

.j-button {
	display: inline;
}

</style>
</head>
<body>
	<div class="header">
	</div>
	<div class="container">
		<div class="content">
			<form id="loginForm" name="loginForm" action="" method="post">
				<table>
					<tr>
						<th><label for="id">아이디:</label></th>
						<td><input type="text" id="id" name="id"></td>
					</tr>				
					<tr>
						<th><label for="password">비밀번호:</label></th>
						<td><input type="password" id="password" name="password"></td>
					</tr>				
				</table>
				<div>
					<button type="button" id="loginBtn" class="j-button">로그인</button>
					<button type="button" id="joinBtn" class="j-button">회원가입</button>
				</div>
			</form>
		</div>
	</div>
	<div class="footer">
	</div>
	<script type="text/javascript">
	document.getElementById("joinBtn").onclick=function(){
		location.href="joinForm.do"
	}
	
	document.getElementById("loginBtn").onclick=function(){
		if(loginForm.id.value==""){
			alert("아이디를 입력하세요");
			return;
		}
		
		if(loginForm.password.value==""){
			alert("비밀번호를 입력하세요");
			return;
		}
		
		loginForm.action="login.do";
		document.getElementById("loginBtn").type="submit";
		
	}
	
	
	
	</script>
</body>
</html>