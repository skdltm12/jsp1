<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
</head>

<body>
<div>
	<h2>회원가입</h2>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234!");
		String sql = "";
		pstmt = conn.prepareStatement(sql);
	}catch(Exception e){
	 e.printStackTrace();
	}finally{                                                                                                                   
		
	}
%>
	<form action="" method="post">
		<table>
			<tr>
				<td>이름 : </td>
				<td><input type="text" id="name" name="name" placeholder="이름 입력" autofocus></td>
			</tr>
			<tr>
				<td>아이디 : </td>
				<td><input type="text" id="uid" name="uid" placeholder="아이디 입력"></td>
				<td><button onclick="window.open('pop.jsp','아이디 중복 확인','width=500,height=500')">아이디 중복 확인</button></td>
			</tr>
			<tr>
				<td>비밀번호 : </td>
				<td><input type="text" id="upw" name="upw" placeholder="비밀번호 입력"></td>				
			</tr>
			<tr>
				<td>비밀번호 확인 : </td>
				<td><input type="text" id="upw" name="upw" placeholder="비밀번호 확인"></td>
			</tr>
			<tr>
				<td>주소 : </td>
				<td><input type="text" name="address" placeholder="주소 입력"></td>
			</tr>
			<tr>
				<td>전화번호 : </td>
				<td><input type="phone" name="phone" placeholder="전화번호 입력"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="가입">&nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소"> 
				</td>
			</tr>
			
		</table>
	</form>
	</div>
</body>
</html>