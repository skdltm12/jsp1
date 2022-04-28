<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
</head>
<body>
	<h2>커뮤니티</h2>
	<table>
		<tbody>
		<tr>
			<td>번호&nbsp;&nbsp;</td>
			<td>제목&nbsp;&nbsp;</td>
			<td>작성일&nbsp;&nbsp;</td>
			<td>작성자&nbsp;&nbsp;</td>
		</tr>
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
			<td><%=rs.getString("bno") %>&nbsp;&nbsp; </td>
			<td><a href="boardDetail.jsp"><%=rs.getString("btitle") %>&nbsp;&nbsp; </a></td>
			<td><%=rs.getString("regdate") %>&nbsp;&nbsp; </td>
			<td><%=rs.getString("author") %>&nbsp;&nbsp; </td>
			
		</tr>
<%
		}
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
	
	
	

</body>
</html>