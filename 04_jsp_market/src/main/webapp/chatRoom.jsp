<%@page import="service.UserServiceImpl"%>
<%@page import="service.UserService"%>
<%@page import="dto.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Comment"%>
<%@page import="java.util.List"%>
<%@page import="dto.Comment_room"%>
<%@page import="service.Comment_roomServiceImpl"%>
<%@page import="service.Comment_roomService"%>
<%@page import="service.CommentServiceImpl"%>
<%@page import="service.CommentService"%>
<%@page import="service.BoardServiceImpl"%>
<%@page import="service.BoardService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="static/css/reset.css">
	<link rel="stylesheet" href="static/css/chatRoom.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	<title>채팅룸</title>
</head>
<body>

	<span id="top"></span>
	<%	
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		BoardService boardService = new BoardServiceImpl();
		UserService userService = new UserServiceImpl();
		User user = new User();
		Comment_roomService comment_roomService = new Comment_roomServiceImpl();
		CommentService commentService = new CommentServiceImpl();
		Comment_room cmR = new Comment_room();
		Comment cm = new Comment();
		int room_no = Integer.parseInt(request.getParameter("no"));
		cmR = comment_roomService.select(room_no);
		List<Comment> commentList = new ArrayList();
		commentList = commentService.list(cmR.getNo());
		int CMcount = commentList.size();
	%>
	<header>
		<div class="header">
			<button type="button" id="refreshButton">새로고침</button>
			<% User user1= userService.select(cmR.getMain_no()); %>
			<% User user2= userService.select(cmR.getSub_no()); %>
			<h6><%=user1.getName() %>님, <%=user2.getName() %>님</h6>
			<button type="button">그냥</button>
		</div>
	</header>
	<div class="container">
		<%
			for(int i=0;i<CMcount;i++){
		%>
		<div class="chat">
			<div class="chat_comment"><%=commentList.get(i).getContent()%></div>
			<div>
				<img alt="" src="">
				<% user= userService.select(commentList.get(i).getUuid()); %>
				<H6><%=user.getName()%>님</H6>
			</div>
		</div>
		<%
			}
		%>
	</div>
	<!-- 플로팅 버튼 -->
    <div class="floating">
        <a href="#top"><i class="fa fa-arrow-circle-up"></i></a>
    </div>
    <div class="floating_down">
        <a href="#bottom"><i class="fa fa-arrow-circle-down"></i></a>
    </div>
	<footer>
	<div class="chat_input">
		<form id="chatForm" action="chatRoom_chat.jsp" method="post">
				<input type="text" id="chat" name="chat" placeholder="채팅을 입력해주세요" required autofocus />
				<input type="hidden" name="room_No" value="<%=room_no%>"/>
				<button type="submit" id="transferBtn"><i class="fa fa-arrow-circle-left"></i></button>
		</form>
	</div>
	</footer>
	<span id="bottom"></span>
	<script>
		document.getElementById('refreshButton').addEventListener('click', function() {
        	location.reload(); // 페이지 새로 고침
   		 });
		
        function checkForUpdates() {
             window.location.reload(); // 페이지 새로 고침
        }
        setInterval(checkForUpdates, 5000); // 5초마다 확인
        
        
        window.onload = function() {
            // 페이지가 로드된 후 스크롤을 가장 아래로 이동
            window.scrollTo(0, document.body.scrollHeight);
        };
	</script>
</body>
</html>




