<%@page import="java.util.Optional"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	request.setCharacterEncoding("UTF-8");
	Optional<String> opt = Optional.ofNullable(request.getParameter("title")); // 타이틀이 전달되지않으면
	String title = opt.orElse("환영합니다."); // 환영합니다가 나온다
%>
<title><%=title%></title>
<%-- request.getContextPath() == /02_Jsp --%>
<%-- 외부 정적 파일(css, js)을 포함할 땐 매번 경로가 변할 수 있도록 처리한다. 경로가 변해야 캐싱한 내용을 사용하지 않고 외부 파일을 읽는다. --%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/header.css?dt=<%=System.currentTimeMillis()%>">
<script src="<%=request.getContextPath()%>/resources/js/lib/jquery-3.6.4.min.js"></script>
<style>
	nav ul{
		display: flex;
		list-style-type: none;
	}
	nav ul li {
		width:100px;
		height: 30px;
		text-align: center;
		line-height: 30px;
	}
	nav ul li a {
		text-decoration: none;
		color: #181818;
		display: block;
		width: 100%;
		height: 100%;
	}
</style>
</head>
<body>
	<nav>
		<ul>
			<li><a href="body1.jsp">body1</a></li>
			<li><a href="body2.jsp">body2</a></li>
			<li><a href="body3.jsp">body3</a></li>
		</ul>
	</nav>
	
	<hr>