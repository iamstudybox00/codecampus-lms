<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>
<!-- CDN 방식: Bootstrap, jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>

<style>

 .login {
 	float: right;
 }
</style>

	<link href="../css/styles.css" rel="stylesheet" />
    
 	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="#">OO대학교 eCampus</a>

	<div class="login">
		<c:choose>
		    <c:when test="${empty principal}">
		        <ul class="navbar-nav">
		            <li class="nav-item"><a class="nav-link" href="/myLogin.do">로그인</a></li>
		        </ul>
		    </c:when>
		    <c:otherwise>
		    <s:authorize access="isAuthenticated()"><s:authentication property="name"/>님 반갑습니다.</s:authorize>
		    	<button class="btn btn-dark" type="button" onclick="location.href='/prof/mypage.do' ">마이페이지</button>
		    	<button class="btn btn-dark" type="button" onclick="location.href='/myLogout.do' ">로그아웃</button>
		    	<button class="btn btn-dark" type="button" onclick="location.href='/prof/index.do' ">내 강의실</button>
		    	<!-- <ul class="navbar-nav">
			        <li class="nav-item"><a class="nav-link" href="/prof/index.do">내 강의실</a></li>
		        </ul> -->
		    </c:otherwise>
	    </c:choose>
	</div>
    </nav>
	<br/><br/>
