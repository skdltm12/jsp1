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
		Connection conn = null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("org")
		}
%>
	<form >
		<table>
			<tbody>
				<tr>
					<td><input type="text"></td>
					<td><button>아이디 중복 확인</button></td>
				</tr>
			</tbody>
		</table>
	</form>

</body>
</html>