<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String btnName=null;
	String url=null;
	if(session.getAttribute("isLoged")==null){
		btnName="log-in";
		url=request.getContextPath()+"/member/login.jsp";
	} else {
		btnName="log-out";
		url=request.getContextPath()+"/logout.toy";
	}
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome</title>
	<!-- Favicon image (16x16) -->
	<link rel="icon" href="/margin/images/info.png">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="/margin/styles.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	
	<style type="text/css">
		.inline {
			display: inline;
		}
		
		hr {
			margin-top: 0;
			color: #9d9e9f;
		}
				
	</style>
	
	<!-- 
		[ how to use Google Fonts ]
		https://www.w3schools.com/css/css_font_google.asp
	 -->
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<div class="container-fluid ms-4">
			<span class="navbar-brand mb-0 h1">Margin's practice</span>
			<div class="btn-group dropstart">
				<button type="button" class="btn btn-secondary dropdown-toggle me-4 bg-dark"
					data-bs-toggle="dropdown" aria-expanded="false">List
				</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="<%= request.getContextPath() %>/cloneBenz/home.html">Test Layout-1: 'Benz' </a></li>
					<li><a class="dropdown-item" href="<%= request.getContextPath() %>/admin/index.jsp">Admin Page-Directive</a></li>
					<li><a class="dropdown-item" href="<%= request.getContextPath() %>/admin_template/index.jsp">Admin Page-Action Tag</a></li>
					<li><a class="dropdown-item" href="<%= request.getContextPath() %>/board.servlet.toy">Toy Board - pure Servlet</a></li>
					<li><a class="dropdown-item" href="<%= request.getContextPath() %>/toyBoard/JSP/main_board.jsp">Toy Board - JSP</a></li>
				</ul>
				<button type="button" class="btn btn-outline-dark" onclick="location.href='<%= url %>'"><%= btnName %></button>
			</div>
		</div>
	</nav>
	<hr>
	
	<h1>
		<span>M</span><span>a</span><span>r</span><span>g</span><span>i</span><span>n</span>
	</h1>
	<form action="https://www.google.com/search" method="GET">
		<div class="mx-auto search-bar input-group mb-3">
			
			<!-- q라는 이름으로 text내용을 전달한다. here https://www.google.com/search 에 전달.-->
		  <input name="q" type="text" class="form-control rounded-pill" placeholder="Google 검색 또는 URL입력" aria-label="Recipient's username" aria-describedby="button-addon2">
		</div>
	</form>
</body>
</html>