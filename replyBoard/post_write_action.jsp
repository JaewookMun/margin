<%@page import="web.data.dao.ReBoardDAO"%>
<%@page import="web.data.dto.ReBoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	
	// wrong access - method
	if(request.getMethod().equals("GET")){
		
		response.sendRedirect(request.getContextPath()+"/replyBoard/board_view.jsp");
		return;
		
		/*
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/replyBoard/board_view.jsp'");
		out.println("</script>");
		*/
	}

	request.setCharacterEncoding("UTF-8");
	
	
	int no = ReBoardDAO.getDAO().nextNum();
	
	String writer=request.getParameter("writer");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	int status=0;
	if(request.getParameter("secret")!=null){
		status=Integer.parseInt(request.getParameter("secret"));
	}
	
	int ref= Integer.parseInt(request.getParameter("ref"));
	int reStep = Integer.parseInt(request.getParameter("reStep"));
	int reLevel = Integer.parseInt(request.getParameter("reLevel"));
	
	if(ref==0){
		ref=no;
	} else {
		ReBoardDAO.getDAO().updateReStep(ref, reStep);
		
		reStep++;
		reLevel++;
	}
	
	ReBoardDTO post = new ReBoardDTO();
	post.setNo(no);
	post.setWriter(writer);
	post.setTitle(title);
	post.setRef(ref);
	post.setReStep(reStep);
	post.setReLevel(reLevel);
	post.setContent(content);
	post.setStatus(status);
	
	ReBoardDAO.getDAO().insertPost(post);
	
	response.sendRedirect(request.getContextPath()+"/replyBoard/board_view.jsp");
	return;
	
%>