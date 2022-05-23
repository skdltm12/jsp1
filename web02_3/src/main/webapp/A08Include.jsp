<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=(String) pageContext.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 되는 파일</title>
</head>
<body>
	<h3> 포함되어지는 파일</h3>
	<div>
		<p>name : <%=name %></p>
		<%
			out.println("name : "+name);
		%>
		<p>name : ${name }</p>
	</div>
</body>
</html>