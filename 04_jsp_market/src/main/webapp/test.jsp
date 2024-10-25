<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="dto.Board" %>
<%@ page import="dto.Comment_room" %>
<%@ page import="dto.Comment" %>
<%@ page import="service.Comment_roomService" %>
<%@ page import="service.Comment_roomServiceImpl" %>
<%@ page import="service.CommentService" %>
<%@ page import="service.CommentServiceImpl" %>
<%@ page import="service.DeclarationService" %>
<%@ page import="service.DeclarationServiceImpl" %>
<%@ page import="service.FilesService" %>
<%@ page import="service.FilesServiceImpl" %>
<%@ page import="service.UserService"%>
<%@ page import="service.UserServiceImpl"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>부트스트랩 샘플 페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- 헤더 섹션 -->
<div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <a href="" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
          <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
          <span class="fs-4">알 수 있는 문제 여기 연결<br>당신 마음 아픈</span>
        </a>
    
        <ul class="nav nav-pills">
          <li class="nav-item"><a href="#" class="nav-link active" aria-current="page">집</a></li>
          <li class="nav-item"><a href="#" class="nav-link">특징</a></li>
          <li class="nav-item"><a href="#" class="nav-link">가격</a></li>
          <li class="nav-item"><a href="#" class="nav-link">자주 묻다 질문</a></li>
          <li class="nav-item"><a href="#" class="nav-link">에 대한
</a></li>
        </ul>
      </header>
</div>

<!-- Heroes 섹션 -->
<section class="bg-light py-5">
    <div class="px-4 py-5 my-5 text-center">
        <img class="d-block mx-auto mb-4" src="img/logo.png" alt="" width="100" height="100">
        <h1 class="display-5 fw-bold">권한 불허</h1>
        <div class="col-lg-6 mx-auto">
            <p class="lead mb-4">결코 다시 권한</p>
            <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
            <button type="button" class="btn btn-primary btn-lg px-4 gap-3">중요 단추</button>
            <button type="button" class="btn btn-outline-secondary btn-lg px-4">반성</button>
            </div>
        </div>
    </div>
</section>

<!-- Card View 섹션 -->
<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://via.placeholder.com/300" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">카드 제목</h5>
                        <p class="card-text">별칭, 토탐.</p>
                        <a href="#" class="btn btn-primary">자세히 보다</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://via.placeholder.com/300" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">카드 제목</h5>
                        <p class="card-text">별칭, 토탐.</p>
                        <a href="#" class="btn btn-primary">자세히 보다</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://via.placeholder.com/300" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">카드 제목</h5>
                        <p class="card-text">별칭, 토탐.</p>
                        <a href="#" class="btn btn-primary">자세히 보다</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Footer 섹션 -->
<footer class="bg-dark py-3">
    <div class="container">
        <div class="text-center text-light">
            &copy; 2024 알로하 클래스
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
