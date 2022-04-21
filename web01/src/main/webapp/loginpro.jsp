<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 	String uid = request.getParameter("uid");
 	String upw = request.getParameter("upw");
 
 %>
    <%-- <%@ 디렉티브 %> --%>
    <%	/*스크립트릿(scriptlet)*/ %>
    <%--  <%=표현식 %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
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
	<h2>로그인 정보</h2>
	<form id="frm1" name="login">
		<ul>
			<li>아이디 정보 : <%=uid %></li>
			<li>비밀번호 정보 : <%=upw %></li>
		<%
		if(uid.equals("ysw") && upw.equals("1234")){
			session.setAttribute("uid", uid);
			session.setAttribute("name", "바보");
			response.sendRedirect("index.jsp");
		} else if(uid.equals("admin") && upw.equals("1234")){
			session.setAttribute("uid", uid);
			session.setAttribute("name", "관리자");
			response.sendRedirect("index.jsp");
		}else {
			response.sendRedirect("login.jsp");
		}
		%>
			<!-- <input type="reset" value="취소" id="reset" class="btn"> -->
		
		</ul>
	</form>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>