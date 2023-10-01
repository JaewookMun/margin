<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<link rel="icon" href="<%= request.getContextPath() %>/images/info.png">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<% 
	String message=(String)session.getAttribute("message");
	session.removeAttribute("message");

%>

<style type="text/css">
	body { background: #c0c0c0; }
	#loginPanel {
		background: white;
		width: 400px;
		margin: 0 auto;
		margin-top: 200px;
		padding: 20px;
		text-align: center;
		border: 1px solid #4169E1;
	}
</style>
</head>
<body>
	<div id="loginPanel">
		<p>로그인 화면</p>
		<form action="" method="post" id="form">
			<p><label>ID : </label><input type="text" name="id"></p>		
			<p><label>PW : </label><input type="password" name="password"></p>		
			<button type="submit" id="logIn" onclick="moveTologIn();">Sign-in</button>
			<button type="submit" id="signUp" onclick="moveToSignUpFor();">Sign up for</button>
		</form>
	</div>
	
	<script type="text/javascript">
		var message = "<%= message %>";
		if(message != "null"){
			alert(message);
			message=null;
		}
	
		function moveTologIn(){
			$("#form").attr("action", "<%= request.getContextPath() %>/login.toy");
		}

		function moveToSignUpFor(){
			$("#form").attr("action", "<%= request.getContextPath() %>/member/sign_up.jsp");
		}
	
	</script>
</body>
</html>