<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%	
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>테스트</h2>
<table>
	<tbody>
		<tr>
			<td>이름:</td>
			<td><%= name %></td>
		</tr>
	</tbody>
</table>


</body>
</html>