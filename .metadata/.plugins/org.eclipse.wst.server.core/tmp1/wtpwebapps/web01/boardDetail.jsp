<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>	글 내용 보기	</title>
</head>
<body>

	<h2></h2>
<%
	request.setCharacterEncoding("UTF-8");
	Connection conn = null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int cnt = 0;
	
	try{
		Class.forName("org:mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234!");
		String sql = "select * from board where bno='?'";
		pstmt= conn.prepareStatement(sql);
		pstmt.setString(1, "bno");		
		rs=pstmt.executeQuery();
		
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
	<table>
		<tbody>
			<tr>
				<td> <%=rs.getString("bno") %></td>
			</tr>
			<tr>
				<td> 글 제목 <%=rs.getString("btitle") %></td>
			</tr>
			<tr>
				<td> 작성일자 <%=rs.getString("regdate") %></td>
			</tr>
			<tr>
				<td> 작성자 <%=rs.getString("author") %></td>
			</tr>
			<tr>
				<td> 글 내용 <%=rs.getString("bontent") %></td>
			</tr>

		</tbody>
	</table>


</body>
</html>