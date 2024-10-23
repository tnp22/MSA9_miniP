<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<c:if test="${sessionScope.loginId == null}">
		<%
			response.sendRedirect("login.jsp");
		%>
	</c:if>
	<c:if test="${sessionScope.loginId != null}">
		<div class="container">
			<div>
				<a href="">화살표</a>
			</div>
			<div>
				사진
				사용자
			</div>
			<div>
				<div>
					<div>
						<a href="mypage_image.jsp">이미지 변경</a>
					</div>
					<div>
						<a href="mypage_update.jsp">개인정보 수정</a>
					</div>
					<div>
						<a href="mypage_userDelete.jsp">회원탈퇴</a>
					</div>
				</div>
			</div>
		</div>
	</c:if>
</body>
</html>