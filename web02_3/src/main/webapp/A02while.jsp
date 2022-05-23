<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
* {margin:0; padding:0;  border-collapse: collapse;}
.gugud1 {width: 1500px;  margin: 0 auto; padding:80px}
.gugud2 {width: 1500px; clear:both; margin: 0 auto; padding:80px}
.gugudan1 {border: 1px solid #333; width:150px; float:left;}
.h31 {color:red; border: 1px solid #333; width: 100px; text-align:center; margin: 0 auto; border-top:none}
.p1 {text-align:center; line-height:1.6}
.gugudan2 {border: 1px solid #333; width:150px; float:left;}
.h32 {color:blue; border: 1px solid #333; width: 100px; text-align:center; margin: 0 auto; border-top:none}

</style>
<meta charset="UTF-8">
<title>스크립트릿 While문</title>
</head>
<body>
<div class="gugud1">
<%
	int i = 1;
	int j = 2;
	while(j<10){
		out.println("<div class='gugudan1'>");
		out.println("<h3 class='h31'>"+j+" 단</h3>");
		i=1;
		while(i<10){
			out.println("<p class='p1'>"+j+" X "+i+" = "+(j*i)+"</p>");
			i++;
		}
		out.println("</div>");
		j+=1;
	}	
%>
</div>
<div class="gugud2">
<%
i=1;
j=2;

	while(j<10){
%>
	<div class="gugudan2">
	<h3 class="h32"><%=j %> 단</h3>
<%
		i=1;
		while(i<10){
%>
	
	<p class="p1"><%=j %> X <%=i %> = <%=j*i %></p>
<%				
	i++;
		}
	j+=1;
%>
</div>
<%
}
%>
</div>
</body>
</html>