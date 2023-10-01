<%@page import="web.data.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	// 회원정보 저장
	MemberDTO loginMember = (MemberDTO)session.getAttribute("loginMember");
	
	if(loginMember==null){
		response.sendRedirect(request.getContextPath()+"/member/login.jsp");
		return;
		// return 으로 현재 페이지의 스트림을 종료하지 않으면 error 발생
		
		/*
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/member/login.jsp'");
		out.println("</script>");
		*/
	}
	
	// 작성 게시글 정보 설정
	String ref="0", reStep="0", reLevel="0"; 
	String pageNum="1";
	boolean isReply=false;
	
	if(request.getParameter("ref")!=null){
		ref=request.getParameter("ref");
		reStep=request.getParameter("reStep");
		reLevel=request.getParameter("reLevel");
		isReply=true;
	}
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계층형 게시판</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style type="text/css">
	table {
		margin: 0 auto;
		margin-top: 50px;
	}
	textarea {
		resize: none;
	}
	
	td {
		padding-left: 5px;
		padding-right: 5px;
	}
</style>
</head>
<body>
	<form name="writeForm" method="post" 
		action="<%= request.getContextPath() %>/replyBoard/post_write_action.jsp">
		<input type="hidden" name="ref" value="<%= ref %>">
		<input type="hidden" name="reStep" value="<%= reStep %>">
		<input type="hidden" name="reLevel" value="<%= reLevel %>">
		<table>
			<tr>
				<td>작성자</td>
				<td><input type=text readonly="readonly" name="writer" value="<%= loginMember.getName() %>" style="border: none;"></td>
			</tr>
			<tr>
				<td><label for="title">제목</label></td>
				<td>
					<input type="text" id="title" name="title">&nbsp;&nbsp;
					<input type="checkbox" name="secret" value="1">&nbsp;비밀글
						<%-- 일반글 : 0, 비밀글 : 1, 관리자 : 9 --%>
				</td>
			</tr>		
			<tr>
				<td><label for="content">내용</label></td>
				<td>
					<textarea rows="7" cols="70" name="content" id="content"></textarea>
				</td>
			</tr>
		</table>
		<div style="text-align: center;">
			<button type="submit" name="submitBtn">등록</button>
			<button type="reset" name="resetBtn">다시쓰기</button>
		</div>
	</form>
	<script type="text/javascript">
		var isReply=<%= isReply %>;
		if(isReply==true){
			// 게시글 정보 입력 및 입력태그 값 설정			
		}
	</script>
</body>
</html>