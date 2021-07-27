<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String message=(String)session.getAttribute("message");
	
	if(message==null){
		message="";
	} else {
		session.removeAttribute("message");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Form</title>
<style type="text/css">
	.container {
		text-align: center;
		margin: 0 auto;
	}
</style>
</head>
<body>
	<div class="container">
		<form action="test_action.jsp" method="post" name="testForm">
			<button type="button" name="testOne" value="One" onclick="submitOne();">case1</button>
			<button type="button" name="testTwo" value="Two" onclick="submitTwo();">case2</button>
		</form>
		<div><p style="color: red;">메시지: <%= message %></p></div>
	</div>
	<script type="text/javascript">
		function submitOne(){
			testForm.submit();
		}
		
		function submitTwo(){
			testForm.testTwo.type="submit";
		}
	</script>
</body>
</html>