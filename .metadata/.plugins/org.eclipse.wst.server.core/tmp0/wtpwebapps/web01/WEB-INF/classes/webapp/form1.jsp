<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 	String name = request.getParameter("name");
 	String id = request.getParameter("id");
 	String pw = request.getParameter("pw");
 	String adr = request.getParameter("adr");
 	String oram = request.getParameter("oram");
 	String email = request.getParameter("email");
	String url = request.getParameter("url"); 
	String date = request.getParameter("date");
	String cmt = request.getParameter("cmt");
	String team = request.getParameter("team");
	String[] t4 = request.getParameterValues("t4");
	String team1 =  request.getParameter("team1");
	String[] t41 =  request.getParameterValues("t41");
	
 /* 	String oram = request.getParameter("oram"); */
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 데이터 처리 및 결과 반환 실습</title>
<!-- CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="panel-heading">
	<h2>form.html에 전송된 데이터</h2>
</div>
<div class="panel_body">
	<table>
	<tr>
	<th>이름 : </th>
	<td><%=name %><td>
	</tr>
	<tr>
	<th>아이디 : </th>
	<td><%=id %><td>
	</tr>	
	<tr>
	<th>비밀번호 : </th>
	<td><%=pw %><td>
	</tr>
	<tr>
	<th>주소 : </th>
	<td><%=adr %><td>
	</tr>
	<tr>
	<th>주문수량 : </th>
	<td><%=oram %>개<td>
	</tr>
	<tr>
	<th>이메일 : </th>
	<td><%=email %><td>
	</tr>
	<tr>
	<th>링크 : </th>
	<td><%=url %><td>
	</tr>
	<tr>
	<th>날짜 : </th>
	<td><%=date %><td>
	</tr>
	<tr>
	<th>남긴 말 : </th>
	<td><%=cmt %><td>
	</tr>	
	<tr>
	<th>응원하는 야구 팀 : </th>
	<td><%=team %><td>
	</tr>
	<tr>
	<th>4강 진출할 것 같은 야구 팀 : </th>
		<td>
			<ul>
			<%
			for(int i=0;i<t4.length;i++){
			%>
				<li><%=t4[i] %></li>
			<% 
			} 
			%>
			</ul>
		<td>
	</tr>
	<tr>
	<th>우승할 것 같은 야구 팀 : </th>
	<td><%=team1 %><td>
	</tr>
	<tr>
	<th>플레이오프 진출 예상 팀 : </th>
	<td><%=t41 %><td>
	</tr>	
	</table>	
</div>
</body>
</html>