<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<!-- 
	************************************************************************************************************
	* 프로젝트명(Context name): margin
	* 
	* admin - Toy project
	* 
	* 
	* @author JaewookMun
	************************************************************************************************************
	-->
<% 
	request.setCharacterEncoding("utf-8");
	String category=request.getParameter("category");
	
	if(category==null){
		category="";
	}

%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Margin</title>
	
	<%-- bootstrap, font, CSS --%>
	<%@ include file="/admin/head_config.jspf" %>
</head>

<body>
	<!-- sidebar & navbar     -->
	<div class="row container-fluid mx-0 px-0 fixed-top" id="outline">
		<%@ include file="/admin/sidebar.jspf" %>
		<!-- admin main -->
		<div class="col-md-10 ml-auto navbar-nav" id="rightPanel">
			<%@ include file="/admin/admin_header.jspf" %>
			<div class="navbar-nav-scroll" id="contents-container">
				<div class="container">
				<!-- 편집시작 -->



					<h3 style="text-align: center;" id="test">Admin page test</h3>
					<img alt="" src="workspace.jpg" width="700" class="d-block mx-auto my-3">
					<img alt="" src="workspace.jpg" width="700" class="d-block mx-auto my-3">
					<p id="test"></p>



				<!-- 편집종료 -->
				</div>
				<%@ include file="/admin/admin_footer.jspf" %>
			</div>
		</div>
	</div>
	
	
	<jsp:include page="/admin/sidebar_script.jsp">
		<jsp:param value="<%= category %>" name="category"/>
	</jsp:include>
	
	</body>
</html>