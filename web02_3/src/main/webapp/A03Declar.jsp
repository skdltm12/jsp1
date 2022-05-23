<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	public int cnt = 1;
	public String name = "";
	
	public int onAdd(int x, int y){
		return x+y;
	}
%>
<%
	int a= 20, b=30;
	out.println("<div>"+a+"+"+b+"="+onAdd(a,b)+"</div>");
%>
	<div>50+80=<%=onAdd(50, 80) %></div>
<%
	String name = request.getParameter("name");
	if(name.equals("sw")){
		cnt = 100;
		a = 200;
	}
%>
	<div>name : <%=name %></div>
	<h4>지역변수와 전역변수의 결과값</h4>
	<div>cnt = <%=cnt %>, a = <%=a %></div>
</body>
</html>