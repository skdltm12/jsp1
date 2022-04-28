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
	<form action="idcheck.jsp" method="post" onsubmit="return invalidCheck(this)" >
		<table>
			<tbody>
				<tr>
					<td><input type="text" id="id" name="id" required autofocus></td>
					<td><input type="submit" value="중복 확인"></td>
				</tr>
				<tr>
					<td>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	<script>
	function invalidCheck(f){
		var id = f.id.value;
		id = id.trim();
		if(id.length<8 || id.length>12){ 
			alert("아이디의 글자수는 8~12자 내여야 합니다.")
			return false;
		}
	}
	</script>
</body>
</html>