<%@page import="web.data.BoardDTO"%>
<%@page import="web.data.BoardDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 조회</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
	table { text-align: center; }


</style>
</head>
<body>
	<h1>게시판 연습</h1>
	<hr>
	<%-- /margin/board.delete.servlet --%>
	<form action="" method="post" id="form">
		<table class="table">
			<tr>
				<th>번호</th><th>작성자</th><th>제목</th><th>내용</th><th>작성일자</th>
			</tr>
			<% 
			List<BoardDTO> postList=BoardDAO.getInstance().getAllPosts(); 
			
			if(postList.isEmpty()){
			%>
			<tr>
			<td colspan="5">작성된 내용이 없습니다.</td>
			</tr>
			<% 
			} else { 
				for(int i=0; i<postList.size(); i++){ %>
					<tr class="post<%=i %>">
						<td><%= postList.get(i).getNo() %></td>
						<td><%= postList.get(i).getName() %></td>
						<td><%= postList.get(i).getTitle() %></td>
						<td><%= postList.get(i).getContent() %></td>
						<td><%= postList.get(i).getRegDate() %></td>
					</tr>
				<%}
			}%>
		</table>
		<hr>
		<button type="button" class="btn btn-dark" onclick="location.href='/margin/toyBoard/JSP/write_post.jsp'">글쓰기</button>
		<button type="button" id="delete" class="btn btn-dark" onclick="deletePost();">삭제</button>
		<button type="button" id="update" class="btn btn-dark" onclick="updatePost();">수정</button>
	</form>

	<script type="text/javascript">
		var count=0;
		var size=<%= postList.size() %>;
		
		function deletePost(){
			if(count==0){
				<% for(int i=0; i<postList.size(); i++){ %>
				$("<td><input type='checkbox' name='<%=i%>' value='<%=postList.get(i).getNo()%>'></td>").appendTo(".post<%= i%>");
				<%}%>
				
				count++;
				$("#form").attr("action", "/margin/board.delete.servlet");
				return;
				
				/*
				for(int i=0; i<size; i++){
					$("<td><input type='checkbox'></td>").appendTo(".post"+i);
					count++;
					return;
				}
				*/
			}else{
				
				$("#delete").attr("name", "size");
				$("#delete").attr("value", size);
				$("#delete").attr("type", "submit");
				count=0;
			}
		}
		
		function updatePost(){
			if(count==0){
				<% for(int i=0; i<postList.size(); i++){ %>
				$("<td><input type='checkbox' name='<%=i%>' value='<%=postList.get(i).getNo()%>'></td>").appendTo(".post<%= i%>");
				<%}%>
				
				count++;
				$("#form").attr("action", "/margin/toyBoard/JSP/update_post.jsp");
				
				return;

			}else{
				$("#update").attr("type", "submit");
				count=0;
			}
		}
	
	</script>
</body>
</html>