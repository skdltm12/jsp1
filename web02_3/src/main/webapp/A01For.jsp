<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿 For문</title>
</head>
<body>
<div class="panel-heading">
	<h2>For문 연습</h2>
</div>
<div class="panel-body">
<%
	int total=0;
	for(int i=1;i<=10;i++){
		total+=i;
		out.println("<p>"+i+"</p>");
	}
	out.println("<p><strong>1부터 10까지의 합계는 "+total+" 입니다. </strong></p>");
%>
</div>
<div class="panel-body">
<%
	total=0;
	for(int i=1;i<=10;i++){
		total+=i;
%>
	<p><%=i %></p>
<%
	}
%>
	<p><strong>1부터 10까지 합계는 <%=total %> 입니다. </strong></p>
</div>
</body>
</html>