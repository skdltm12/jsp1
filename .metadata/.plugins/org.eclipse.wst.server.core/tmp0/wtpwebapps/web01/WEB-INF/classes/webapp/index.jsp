<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- <%@ 디렉티브 %> --%>
    <%	/*스크립트릿(scriptlet)*/ %>
    <%--  <%=표현식 %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서버 페이지 테스트</title>
<link rel="stylesheet" href="">
</head>
<body>
<div class="wrap">
<header id="hd">
	<div class="hd_wrap">
	<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content">
	<h2>콘텐츠 영역</h2>
</div>
<footer id="ft">
	<h2>푸터 영역</h2>
</footer>
</div>
</body>
</html>