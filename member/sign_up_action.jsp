<%@page import="web.data.dao.MemberDAO"%>
<%@page import="web.data.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	// 잘못된 접근 1
	if(request.getMethod().equals("GET")){
		out.println("<script type='text/javascript'>");
		out.println("alert('잘못된 접근입니다.')");
		out.println("location.href='"+request.getContextPath()+"/member/sign_up.jsp'");
		out.println("</script>");
		return;
	}

	// POST -> charset 확인
	request.setCharacterEncoding("UTF-8");
	
	String id=request.getParameter("id");
	String password=request.getParameter("password");
	String name=request.getParameter("name");
	String phone=request.getParameter("phone1")+request.getParameter("phone2")+request.getParameter("phone3");
	
	MemberDTO member=new MemberDTO();
	member.setId(id);
	member.setPassword(password);
	member.setName(name);
	member.setPhone(phone);
	
	int rows=MemberDAO.getDAO().insertMember(member);
	
	out.println("<script type='text/javascript'>");
	out.println("alert('회원가입에 성공하였습니다..')");
	out.println("location.href='"+request.getContextPath()+"/member/login.jsp'");
	out.println("</script>");
	return;
%>