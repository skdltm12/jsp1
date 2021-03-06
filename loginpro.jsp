<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
 <%
 	request.setCharacterEncoding("UTF-8");
 	String uid = request.getParameter("uid");
 	String upw = request.getParameter("upw");
 
 %>
    <%-- <%@ 디렉티브 %> --%>
    <%	/*스크립트릿(scriptlet)*/ %>
    <%--  <%=표현식 %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 </title>
<link rel="stylesheet" href="">
</head>
<body>
<div class="wrap">
<header id="hd">
	<div class="hd_wrap">

	<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content">
	<h2>입력한 회원 정보</h2>
	<form id="frm1" name="login">
		<ul>
			<li>아이디 정보 : <%=uid %></li>
			<li>비밀번호 정보 : <%=upw %></li>
<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		try{
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234!");
			String sql = "select * from member where id=? and pw=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(0, uid);
			pstmt.setString(1, upw);
			rs = pstmt.executeQuery(sql);
		if(rs.next()) {
			String id = rs.getString("id");
			String pw = rs.getString("pw");
			String name = rs.getString("name");		
			if(upw == pw){
			session.setAttribute("uid", uid);
			session.setAttribute("name", name);
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
		}else{
			response.sendRedirect("login.jsp");
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
			
		
		</ul>
	</form>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>