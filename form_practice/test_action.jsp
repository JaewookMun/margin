<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<% 
	request.setCharacterEncoding("utf-8");
	
	String testOne = request.getParameter("testOne");
	String testTwo = request.getParameter("testTwo");
	
	
	session.setAttribute("message", "testOne : "+testOne+", testTwo : "+testTwo);
	
	response.sendRedirect("test_form.jsp");
%>