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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="panel-body">
<header id="hd" class="panel-header">
	<div class="hd_wrap">
	<%@ include file="nav.jsp" %>
	</div>
</header>
<%
	int bno = Integer.parseInt(request.getParameter("bno"));
	String btitle = request.getParameter("bitlte");
	String bontent = request.getParameter("bontent");
	String author = request.getParameter("author");
	request.setCharacterEncoding("UTF-8");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int cnt = 0;
	String sql="select * from board where bno=?";
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company", "root", "1234!");
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rs=pstmt.executeQuery();
%>
	<div>
		<h2></h2>
		<form action="boardUpdatePro.jsp" onsubmit="return insertcheck(this)">
			<table class="table">
				<tbody>
					<tr>
						<td>제목</td>
						<td><input type="text" name="btitle" id="btitle" size="48" required value='<%=btitle %>'></td>
					</tr>
					<tr>
						<td>내용</td>
						<td>
							<textarea name="bontent" id="bontent" cols="50" rows="10" required ><%=bontent %></textarea>
						</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input type="text" name="author" id="author" value=<%=author %> required></td>
					</tr>
					<tr>
						<td><input type="submit" value="수정" class="btn btn-primary"></td>
						<td><input type="reset" value="취소" class="btn btn-primary"></td>
						<td><input onclick="location.href='board1.jsp'" class="btn btn-primary" value="목록"></td>
					</tr>
					<%
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch(Exception e){
				e.printStackTrace();		
			}
		}
					
					%>
				</tbody>
			</table>
			<script>
			function insertcheck(f){
				var memo=f.bontent.value;
				if(memo.length>=480){
					alert("내용은 480자 이내여아 합니다");
					return false;
				}
			}
			</script>
		</form>
		
		<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
	</div>
</body>
</html>