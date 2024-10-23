<%@ include file="jstl.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
</head>
<body>
	
	<input type="checkbox" name="bars" id="bars">
	
	<!-- 사이드바 -->
    <div class="sidebar">
        <ul class="sidemenu">
            <li>
                <a href="">
                    <h3>거래</h3>
                    <p>중고 물품</p>
                </a>
            </li>
            <li>
                <a href="chatRoom.jsp">
                    <h3>채팅</h3>
                    <p>채팅룸 리스트</p>
                </a>
            </li>
            <li>
                <a href="myPage.jsp">
                    <h3>마이페이지</h3>
                    <p>회원정보수정,이미지변경,회원탈퇴</p>
                </a>
            </li>
        </ul>
    </div>
	
	<!-- 플로팅 버튼 -->
    <div class="floating">
        <a href="#top"><i class="fa fa-arrow-circle-up"></i></a>
    </div>
	
    <!-- 헤더 -->
    <header>
        <!-- menu -->
        <div class="menu">
            <div class="menu-left">
                <!-- <a href=""><i class="fa fa-user"></i></a> -->
                <a href="main.jsp"><img class="menu-left-img" src="static/img/apple.png" alt="로고"/></a>
            </div>
            <div class="menu-center">
                <nav class="pc">
						<ul>
						<c:if test="${sessionScope.loginId == null}">
							<li><a href="signup.jsp">회원가입</a></li>
							<li><a href="login.jsp">로그인</a></li>
							</c:if>
						<c:if test="${sessionScope.loginId != null}">
							<li>${sessionScope.loginUser.getId()}님<li>
							<li><a href="logout.jsp">로그아웃</a></li>
						</c:if>
						</ul>
                </nav>
            </div>
            <div class="menu-right">
                <a href="javascript:;">
                    <label for="bars" class="bars">
                        <span class="bar top"></span>
                        <span class="bar mid"></span>
                        <span class="bar bottom"></span>
                    </label>
                </a>
            </div>
        </div>

    </header>
    <div class="main_img">
		<div class="main_img_content">
            APPLE MARKET
        </div>
	</div>
</body>
</html>