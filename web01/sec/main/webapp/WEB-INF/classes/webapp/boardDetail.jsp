<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
int bno = Integer.parseInt(request.getParameter("bno"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>	글 내용 보기	</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<header id="hd">
	<div class="hd_wrap">
	<%@ include file="nav.jsp" %>
	</div>
</header>
	<h2></h2>
		<table class="table">
		<tbody>
<%		
		Connection conn = null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;		
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234!");
		String sql = "select * from board where bno=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bno);				
		rs=pstmt.executeQuery();
		if(rs.next()){
%>
			<tr>
			<th>글번호</th>
			<td><%=rs.getInt("bno") %></td>
		</tr>
		<tr>
			<th>글 제목</th>
			<td> <%=rs.getString("btitle") %></td>
		</tr>
		<tr>
			<th>작성일자</th>
			<td><%=rs.getDate("regdate") %></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=rs.getString("author") %></td>
		</tr>
		<tr>
			<th>글 내용</th>
			<td><%=rs.getString("bontent") %></td>
		</tr>
		<tr>
			<td colspan="2">			
			<% if(sid.equals("admin")) { %>
				<input onclick="location.href='boardUpdate.jsp?bno=<%=bno %>'" class="btn btn-primary" value="수정">
				&nbsp;&nbsp;&nbsp;
				<input onclick="location.href='boardDeletePro.jsp?bno=<%=bno %>'" class="btn btn-primary" value="삭제">
				&nbsp;&nbsp;&nbsp;
			<% } %>
				<input onclick="location.href='board1.jsp'" class="btn btn-primary" value="목록">
			</td>
		</tr>
<%
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
		rs.close();
		pstmt.close();
		conn.close();
		}catch(Exception e){
		e.printStackTrace();	
		}	
	}
%>


		</tbody>
	</table>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>

</body>
</html>