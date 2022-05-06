<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./web1/img/icon.jpg">
    <link rel="apple-touch-icon" href="./web1/img/icon.jpg">
    <!-- 검색(메타) 정보 -->
    <meta name="url" content="http://hdke.co.kr/main/main.php">
    <meta name="title" content="현대기업">
    <meta name="description" content="현대기업의 기업정보,제품정보,미디어 등">
    <meta name="keywords" content="현대기업,엘리베이터">
    <!-- 오픈 그래프 -->
    <meta property="og:url" content="http://hdke.co.kr/main/main.php">
    <meta property="og:title" content="현대기업">
    <meta property="og:description" content="현대기업의 기업정보,제품정보,미디어 등">
    <meta property="og:image" content="./img/web1/logo.jpg">
    <title>현대 기업</title>
    <!-- 기본 플러그인 연결 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <!-- 웹 폰트 모듈 연결 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Alegreya+Sans:wght@100&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Alegreya+Sans:wght@100&family=Open+Sans:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
    <!--스타일 초기화 모듈 연결 -->
       <!-- <link rel="stylesheet" href="./css/reset.css"> -->
       <link rel="stylesheet" href="./css/normalize.css">
       <link rel="stylesheet" href="common.css">
       <link rel="stylesheet" href="sub_common.css">
<meta charset="UTF-8">
<title>회원정보 보기 및 수정</title>
</head>
<body>
<div class="wrap">
<header id="hd" class="panel-heading">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<h2>회원 정보 보기</h2>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company", "root", "1234!");
		String sql = "select * from member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, sid);
		rs = pstmt.executeQuery();
		if(rs.next()){
%>
			<form action="memEdit.jsp" method="post">
				<table>
					<tbody>
						<tr>
							<td>아이디 : </td>
							<td><input type="text" name="uid" value='<%=rs.getString("id") %>' readonly></td>
						 </tr>
						<tr>
							<td>비밀번호 : </td>
							<td><input type="text" name="upw" value='<%=rs.getString("pw") %>'></td>
						 </tr>
						<tr>
							<td>이름 : </td>
							<td><input type="text" name="name" value='<%=rs.getString("name") %>' readonly></td>
						 </tr>
						<tr>
							<td>연락처 : </td>
							<td><input type="tel" name="phone" value='<%=rs.getString("phone") %>'></td>
						 </tr>
						<tr>
							<td>주소 : </td>
							<td><input type="text" name="address" value='<%=rs.getString("address") %>'></td>
						 </tr>
						 <tr>
						 	<td colspan="2">
						 		<input type="submit" value="정보변경"/> &nbsp; &nbsp; &nbsp;&nbsp;
						 		<input type="reset" value="취소"/>						 		
						 	</td>
						</tr>
<%
	if(!sid.equals("admin")){
%>
							<tr><td><a href="secession.jsp"><input type="button" value="회원탈퇴"></a><td><tr>
<%
	}
%> 

					</tbody>
				</table>
			</form>
<%			
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
</div>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>