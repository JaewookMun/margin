<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String all=request.getParameter("ALL");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.img_title {
		text-align: center;
	}
</style>
</head>

<body>
	<div class="img_title">
		<img alt="" src="<%= request.getContextPath() %>/goods/images/detail/detail_img.jpg">
		<%-- <img src="/data/skin/front/mime/img/goods/new/63/visual_title.png"> --%>
		
		<p>전달값 : <%= all %></p>
	</div>
</body>
</html>