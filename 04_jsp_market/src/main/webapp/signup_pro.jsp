<%@page import="service.UserServiceImpl"%>
<%@page import="service.UserService"%>
<%@page import="dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	//User 객체 생성
	User user = User.builder()
						.id(username)
						.passwd(password)
						.name(name)
						.email(email)
						.enabled(true)
						.build();
	
	//회원가입요청
	UserService userService = new UserServiceImpl();
	int result = userService.signup(user);
	
	//회원가입 성공
	if(result>0){
		response.sendRedirect("index.jsp"); //메인 
	}
	else{
		response.sendRedirect("signup.jsp?error=0"); //다시 회원가입 페이지로 (에러포함)
	}
	
	
	
	
%>