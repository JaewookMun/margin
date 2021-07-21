<%@ page language="java" contentType="text/html; charset=UTF-8"
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

				<!-- 작업내용은 여기서부터 작성해주세요. -->
					<h3>board 게시판 페이지(예시) 입니다.</h3>
					<hr>




				<!-- 편집창 종료 -->
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