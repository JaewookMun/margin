<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<link rel="icon" href="/margin/images/info.png">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
			<button type="submit" id="logIn" onclick="signIn();">Sign-in</button>
			<button type="submit" id="signUp" onclick="signUpFor();">Sign up for</button>
		</form>
	</div>
	
	<script type="text/javascript">

		function signIn(){
			$("#form").attr("action", "/margin/login.toy");
		}

		function signUpFor(){
			$("#form").attr("action", "/margin/authorization/sign_up_for.jsp");
		}
	
	</script>
</body>
</html>
