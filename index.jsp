<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 로그인 성공알림.
	String message=(String)session.getAttribute("message");
	session.removeAttribute("message");
	
	message=(String)session.getAttribute("test");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome</title>
	<!-- Favicon image (16x16) -->
	<link rel="icon" href="/margin/images/info.png">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
	<link rel="stylesheet" href="/margin/styles.css">
	
	
	
	<!-- 
		[ how to use Google Fonts ]
		https://www.w3schools.com/css/css_font_google.asp
	 -->
</head>
<body>
	<%-- header --%>
	<%@include file="/header.jspf" %>
	
	<h1>
		<span>M</span><span>a</span><span>r</span><span>g</span><span>i</span><span>n</span>
	</h1>
	<form action="https://www.google.com/search" method="GET">
		<div class="mx-auto search-bar input-group mb-3">
			
			<!-- q라는 이름으로 text내용을 전달한다. here https://www.google.com/search 에 전달.-->
		  <input name="q" type="text" class="form-control rounded-pill" placeholder="Google 검색 또는 URL입력" aria-label="Recipient's username" aria-describedby="button-addon2">
		</div>
	</form>
	
	<script type="text/javascript">
		var message = "<%= message %>";
		if(message != "null"){
			alert(message);
			message=null;
		}
	</script>
</body>
</html>