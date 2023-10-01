<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="web.data.dto.ReBoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="web.data.dao.ReBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 페이징 처리
	int pageSize=10;
	
	int pageNum=1;
	// 페이지 번호를 전달받을 경우
	if(request.getParameter("pageNum")!=null){
		pageNum=Integer.parseInt(request.getParameter("pageNum"));
	}
	
	int totalPost=ReBoardDAO.getDAO().selectAllCount();
	
	int pageCount=(int)Math.ceil((double)totalPost/pageSize);
	
	// 페이지 번호를 잘못 전달 받을 경우
	if(pageNum<1 || pageNum>pageCount){
		pageNum=1;
	}
	
	int startRow=(pageNum-1)*pageSize+1;
	
	int endRow=pageNum*pageSize;
	
	// 마지막 게시글번호가 클경우
	if(endRow>totalPost){
		endRow=totalPost;
	}
	List<ReBoardDTO> postList = ReBoardDAO.getDAO().selectPostList(startRow, endRow);
	
	// rownum (rn)을 사용할 수 없기 때문에 게시글 번호로 쓰기 위해 설정
	int countNumber=totalPost;
	
	String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계층형 게시판</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style type="text/css">

	.container {
		width: 80%;
		text-align: center;
	}
	
	.table {
		margin: 0 auto;
		margin-bottom: 15px;
	}

	.title {
		text-align: left !important;
		padding: 20px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}

	
</style>
</head>
<body>
	<%-- header --%>
	<%@include file="/header.jspf" %>
	
	<div class="container">
	<table class="table table-hover"> 
		<tr>
			<th width="100">No</th>
			<th width="350">Title</th>
			<th width="100">Writer</th>
			<th width="200">Date</th>
		</tr>
		<% if(totalPost==0){ %>
			<tr>
				<td colspan="4">게시된 글이 없습니다.</td>
			</tr>		
		<% } else { %>
			<% for(ReBoardDTO post : postList) { %>
				<tr>
					<td><%= countNumber %></td>
					<td class="title"><%= post.getTitle() %></td>
					<td><%= post.getWriter() %></td>
					<% if(post.getRegDate().substring(0, 10).equals(currentDate)) {%>
						<td><%= post.getRegDate().substring(10) %></td>						
					<% } else { %>
						<td><%=post.getRegDate().substring(0, 10) %></td>
					<% } %>
				</tr>
				<% countNumber--; %>
			<% } %>
		<% } %>
	</table>
		<button id="write" onclick="location.href='<%=request.getContextPath()%>/replyBoard/post_write.jsp'">글쓰기</button>
	</div>
	
	
</body>
</html>