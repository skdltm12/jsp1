<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- <%@ 디렉티브 %> --%>
    <%	/*스크립트릿(scriptlet)*/ %>
    <%--  <%=표현식 %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="">
</head>
<body>
<div class="wrap">
<header id="hd">
	<div class="hd_wrap" class="panel-heading">
	<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<h2>로그인</h2>
	<form id="frm1" name="login" action="loginpro.jsp" method="post">
		<ul>
			<li><input type="text" class="indata" id="uid" name="uid" placeholder="아이디 입력"
			required autofocus></li>
			<li><input type="password" class="indata" id="upw" name="upw" placeholder="비밀번호 입력"
			required ></li>
			<li class="btn_frame">
			<input type="submit" value="로그인" id="submit" class="btn">
			<input type="reset" value="취소" id="reset" class="btn">
			</li>
		</ul>
	</form>
</div>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>