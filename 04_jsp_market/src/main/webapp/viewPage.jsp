<%@page import="service.Comment_roomServiceImpl"%>
<%@page import="service.Comment_roomService"%>
<%@page import="dto.Comment_room"%>
<%@page import="service.BoardServiceImpl"%>
<%@page import="dto.Board"%>
<%@page import="dto.User"%>
<%@page import="service.BoardService"%>
<%@page import="lombok.EqualsAndHashCode.Include"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
int boardNo = Integer.parseInt(request.getParameter("no"));

// BoardService를 통해 게시글의 상세 내용을 가져옴
BoardService boardService = new BoardServiceImpl();
	Board board = boardService.select(boardNo);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>판매글 등록하기</title>
    <script src="js/jquery-3.7.1.min.js"></script>
    <script src="js/insert.js"></script>
    <script src="hf.js"></script>
    <link rel="stylesheet" href="static/css/viewPage.css">
</head>
<body>
	<jsp:include page="layout/header.jsp"></jsp:include>

    <div class="container">
        <div class="title-box">
      
            <h1 class="main-title" style="margin-top: 20px; font-size: 50px">판매글</h1>
            <br>
          
          <%
          User user=null;
          if(session.getAttribute("loginUser")!=null){
        	  user = (User) session.getAttribute("loginUser");
          
          if( user.getUuid() == board.getUuid()){
        		   %>
						<div class="button">
                       <input type="button" id="update"  value="수정하기" />
                <input type="submit" id="delete" onclick="" value="삭제하기" />
            </div>  
		<%
          }
          }
		%>

				
    		
    	<label class="sellUser" >판매자: ${sessionScope.loginId}</label>
    	<br><br>
         
            <!-- 폼 액션을 서블릿으로 설정, enctype 추가 -->
          
            <div class="inputed">
                    <div class="input-group">
                        <div class="title-box">
                        <h2 class="title" ><%= board.getTitle() %></h2>
                    </div>
                <br>
                	
                    
              <div class="content-box"  id="input_title">
                  
                        <label for="category">카테고리: <%= board.getCategory() %> &nbsp; &nbsp;&nbsp;&nbsp; </label>
                        

                        <label for="status"> <%= board.getStatus() == 1 ? "판매 중" : "판매 완료" %>  &nbsp; &nbsp;&nbsp;&nbsp;</label>
                        
						 <label>가격: <%= board.getPrice() %>원 &nbsp;&nbsp;&nbsp;&nbsp;</label>

                         </div>
                 
                        </div>
                        <br><br>
                    <div class="img_input" id="img_input">
                        <img src="이미지 url" style=" max-width: 1200px; height: aute;" />
                    </div>
                    <br><br>
                    <div class="input-group">
                        <pre for="content" id="content"><%= board.getContent() %> </pre>
                        </div>
                    </div>
                
        
                <div class="button">
                <input type="button" id="main" onclick="window.location.href='main.jsp';" value="목록으로" />
                <input type="hidden" id="Board_no" value="<%=board.getNo() %>" />
                <input type="hidden" id="Main_no" value="<%=board.getUuid() %>" />
                <input type="hidden" id="Sub_no" value="<%=user.getUuid() %>" />
                <input type="submit" id="insert" onclick="openPopup()" value="채팅하기" />
                
            </div>      
        </div>  
        </div>
	<script>
        function openPopup() {
            var Board_no = document.getElementById('Board_no').value;
            var Main_no = document.getElementById('Main_no').value;
            var Sub_no = document.getElementById('Sub_no').value;

            // 팝업창을 열면서 파라미터를 URL로 전달
            var popupUrl = "chatRoom_insert.jsp?Board_no=" + encodeURIComponent(Board_no) + 
                           "&Main_no=" + encodeURIComponent(Main_no) + 
                           "&Sub_no=" + encodeURIComponent(Sub_no);
            window.open(popupUrl, "PopupWindow", "width=1200,height=1600");
        }
    </script>

    <jsp:include page="layout/footer.jsp"></jsp:include>
</body>
</html>