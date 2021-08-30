<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web Practice</title>
<style type="text/css">
.container {
	width: 90%;
	margin: 0 auto;
}

.header {
	padding: 20px;
}

.content {
	margin: 20px;
}

</style>
</head>
<body>
	<div class="container">
		<div class="header">
		</div>
		<div class="content">
			<form action="" method="post">
				<table>
					<tr>
						<th><label>아이디:</label></th>
						<td><input type="text" name="id"></td>
					</tr>				
					<tr>
						<th><label>비밀번호:</label></th>
						<td><input type="password" name="password"></td>
					</tr>				
				</table>
				<button type="submit" id="loginBtn">로그인</button>
				<button type="button" id="joinBtn">회원가입</button>
			</form>
		</div>
		<div class="footer">
		</div>
	</div>
	<script type="text/javascript">
	document.getElementById("joinBtn").onclick=function(){
		location.href="${pageContext.request.contextPath }/joinForm.do"
	}
	
	
	
	</script>
</body>
</html>