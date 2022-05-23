<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% int tot = (int) application.getAttribute("tot"); 
   String hak= ""; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(tot>=180){
		hak="A";
	} else if(tot>=160){
		hak="B";
	} else if(tot>=140){
		hak="C";
	} else if(tot>=120){
		hak="D";
	} else {
		hak="F";
	}
%>
<h3>당신의 학점은 <%=hak %> 입니다.</h3>
</body>
</html>