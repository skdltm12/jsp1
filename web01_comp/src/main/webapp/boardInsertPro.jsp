<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%



	Connection conn=null;
	PreparedStatement pstmt=null;
	int cnt=0;
	String btitle=request.getParameter("btitle");
	String bontent=request.getParameter("bontent");
	String author=request.getParameter("author");
	
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234!");
		String sql = "insert into board(btitle,bontent,author) values(?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,btitle);
		pstmt.setString(2,bontent);
		pstmt.setString(3,author);
		cnt=pstmt.executeUpdate();
		response.sendRedirect("cosser.jsp#page1");
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			pstmt.close();
			conn.close();		
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>