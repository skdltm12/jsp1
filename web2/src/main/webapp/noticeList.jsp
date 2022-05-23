<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kr.go.yeosu.model.*" %>
<%
	//Ctrl에서 보내온 list 객체를 받아 해당 VO 객체로 분리하여 출력
	List<NoticeVO> list = (ArrayList<NoticeVO>) request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
<style>
.tb2 { display:table; width:1100px; margin:20px auto; border-collapse: collapse; }
.tb2 tr { display:table-row; }
.tb2 th, .tb2 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; 
font-size:14px; }
.tb2 tr:frist-child th, .tb2 tr:frist-child td { border-top:1px solid #333; } 
.tb2 th { background-color:#ccc; }
.tb2 td.img_data { max-width:170px; }
.tb2 td.img_data img { max-width:170px; height:auto; }
.tb2 td p.coment { max-width:170px; line-height:24px;}
</style>
<meta charset="UTF-8">
<title>공지사항 목록</title>
</head>
<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<table class="tb2">
	<thead>
		<tr><th>글번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>읽은 횟수</th></tr>
	</thead>
	<tbody>
<%
	for(int i=0;i<list.size();i++){
		//해당VO의 객체 선언
		NoticeVO vo = list.get(i);
%>
		<tr><td><%=vo.getNno() %></td><td><a href="/web2/GetNoticeCtrl?nno=<%=vo.getNno() %>"><%=vo.getNtitle() %></a></td><td><%=vo.getNname() %></td><td><%=vo.getResdate() %></td><td><%=vo.getViewcnt() %></td></tr>
<%
	}
%>
		<tr>
			<td colspan="5">
				<a href="addNoticeForm.jsp">글 추가</a>
			</td>
		</tr>
	</tbody>
</table>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>