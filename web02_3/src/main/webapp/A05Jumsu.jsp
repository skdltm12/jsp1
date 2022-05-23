<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int mat = Integer.parseInt(request.getParameter("mat"));
	int tot;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 결과 출력과 보내기</title>
</head>
<body>
	<p><%=name %>님 </p>
	<p>국어 <%=kor %>점</p>
	<p>수학 <%=mat %>점</p>	
	<p>총점 : <%=tot=kor+mat %>점</p>	
	<%
	application.setAttribute("tot", tot);
	String pass="불합격";
	if(tot>=140){
		pass="합격";
	}
	application.setAttribute("pass", pass);
	%>
	<p><a href="A06Average.jsp?tot=<%=tot %>">평균 구하기</a></p>
	<p><a href="A06Hakjum.jsp">학점 구하기</a></p>
	<p><a href="A06Pass.jsp">합격 여부</a></p>
</body>
</html>