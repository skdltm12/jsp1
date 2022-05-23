<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int tot = Integer.parseInt(request.getParameter("tot"));
	double avg = (float) tot/2;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>평균구하기</title>
</head>
<body>
	<h3>평균은 <%=avg %>점 입니다.</h3>
</body>
</html>