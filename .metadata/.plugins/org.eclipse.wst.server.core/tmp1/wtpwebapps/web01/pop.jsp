<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
</head>
<body>
<h2>아이디 중복 확인</h2>
<%
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
String msg=null;

try{
	Class.forName ("org.mariadb.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234!");
	pstmt = conn.prepareStatement("select * from member id=?");
	pstmt.setString(1,"qid");
	rs = pstmt.executeQuery();
	if(rs==null){
		//아이디가 중복되지 않을경우
	} else {
		msg="중복된 아이디 입니다. 다른 아이디를 사용해주세요";
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
};
%>
	<form action=".jsp" method="post" >
		<table>
			<tbody>
				<tr>
					<td><input type="text" id="id" name="qid"></td>
					<td><button>아이디 중복 확인</button></td>
				</tr>
				<tr>
					<td>
					</td>
				</tr>
			</tbody>
		</table>
	</form>

</body>
</html>