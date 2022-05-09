<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8");%>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="datatables.min.js"></script>
<title>글 수정</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-full">
<header id="hd" class="panel-heading navbar navbar-default">
	<div class="hd_wrap container">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<div>
		<h2>게시판 글 수정</h2>
		 <figure class="sub_ban">
                        <img src="./web1/img/sub_top4.jpg" alt="서브탑">
                    </figure>
                           <div class="ptop1">                               
                                <a href="./cosser.jsp#page1" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="표면처리1">
                                <a href="./cosser.jsp#page2" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>공지사항</h2>
                                <p>HOME>고객지원>공지사항</p>
                                <hr>                                
                            </div>
                            <div class="tb12_div">
<%@ include file="connectPool.conf" %>
<%
	int bno = Integer.parseInt(request.getParameter("bno"));
	sql = "select * from board where bno=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, bno);
	rs = pstmt.executeQuery();
	if(rs.next()){
%>		
		<form action="boardUpdatePro.jsp" name="boardform" method="post" onsubmit="return writeCheck(this)">
			<table class="table">
				<tbody>
					<tr>
						<td class="necessary">글 번호</td>
						<td><%=bno %><input type="hidden" name="bno" id="bno" value='<%=bno %>' required></td>
					 </tr>
					<tr>
						<td class="necessary">제목</td>
						<td><input type="text" name="btitle" id="btitle" maxlength="80" size="70" value='<%=rs.getString("btitle") %>' required></td>
					 </tr>
					<tr>
						<td class="necessary">글내용 : </td>
						<td>
							<textarea name="bontent" id="bontent" cols="80" rows="6"><%=rs.getString("bontent") %></textarea>
						</td>
					 </tr>
					<tr>
						<td class="necessary">작성자 : </td>
						<td><input type="text" name="author" id="author" value='<%=rs.getString("author") %>' required></td>
					 </tr>
					<tr>
						<td class="necessary">작성일 : </td>
						<td><%=rs.getDate("regdate") %></td>
					 </tr>
					 <tr>
					 	<td colspan="2">
					 		<input type="submit" value="수정" class="btn btn-primary"/> &nbsp; &nbsp; &nbsp;&nbsp;
					 		<input type="reset" value="취소" class="btn btn-primary"/> &nbsp; &nbsp; &nbsp;&nbsp;
					 		<a href="board1.jsp" class="btn btn-primary">목록</a>
					 	</td>
					 </tr>
				</tbody>
			</table>
			<script>
			function writeCheck(f) {
				var memo = f.bontent.value;
				if(memo.length>=480){
					alert("글 내용은 480글자 이내이어야 합니다.");
					return false;
				}
			} 
			</script>
		</form>
		</div>
<%
	}
%>
<%@ include file="connectClose.conf" %>
	</div>
</div>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>