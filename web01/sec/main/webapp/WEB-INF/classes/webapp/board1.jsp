<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="datatables.min.js"></script>
<script>
$(document).ready( function () {
    $('#myTable').DataTable();
});
</script>
<meta charset="UTF-8">
<title>게시글 목록</title>
</head>
<body>
<div class="container-full">
<header id="hd" class="panel-heading navbar navbar-default">
	<div class="hd_wrap container">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
<div class="container-fluid">
	<h2>커뮤니티</h2>
	<table class="table" id="myTable">
		<thead>
		<tr>
			<td>번호&nbsp;&nbsp;</td>
			<td>제목&nbsp;&nbsp;</td>
			<td>작성일&nbsp;&nbsp;</td>
			<td>작성자&nbsp;&nbsp;</td>
		</tr>
		<thead>
		<tbody>
	<%
	request.setCharacterEncoding("UTF-8");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234!");
		String sql = "select * from board";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()){
%>
		<tr>
			<td><%=rs.getInt("bno") %>&nbsp;&nbsp; </td>
			<td><a href='boardDetail.jsp?bno=<%=rs.getInt("bno") %>'><%=rs.getString("btitle")%>&nbsp;&nbsp; </a></td>				 
			<td><%=rs.getString("regdate") %>&nbsp;&nbsp; </td>
			<td><%=rs.getString("author") %>&nbsp;&nbsp; </td>
		</tr>	
		<tr>
		
<%
		}
%>		
<%	

	}catch(Exception e){
		e.printStackTrace();
	}finally{
		
	}try{
		rs.close();
		pstmt.close();
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	
	</tbody>
	</table>
				<button class="btn btn-primary" onclick="location.href='boardinsert.jsp'" >글쓰기</button>
	</div>
	</div>
	<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>
	

</body>
</html>