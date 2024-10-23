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
				<a href="myPage.jsp">화살표</a>
			</div>
			<div>
				<ul>
					<li>비밀번호 </li>
					<li>닉네임 </li>
					<li>전화번호 </li>
					<li>이메일 </li>
					<li>지역 </li>
				</ul>
			</div>
			<div>
				ㅁ확인
			</div>
		</div>
	</c:if>
</body>
</html>