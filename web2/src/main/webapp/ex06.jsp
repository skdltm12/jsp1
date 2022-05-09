<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.Student" %>
    <% Student st1 = (Student) request.getAttribute("student"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	번호 :	<%=st1.getNo() %><br>
	이름 :	<%=st1.getName() %><br>
	국어 :	<%=st1.getKor() %><br>
	영어 :	<%=st1.getEng() %><br>
	수학 :	<%=st1.getMat() %><br>
</body>
</html>