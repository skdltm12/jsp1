<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- <%@ 디렉티브 %> --%>
    <%	/*스크립트릿(scriptlet)*/ %>
    <%--  <%=표현식 %> --%>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="">
</head>
<body>
<div class="wrap">
<header id="hd">
	<div class="hd_wrap" class="panel-heading">

	<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<h2>로그인</h2>
	<form id="frm1" name="login" action="loginpro.jsp" method="post">
		<ul>
			<br><br><br><br><br><br><br><br><br><br><br><br><br>
			<li><input type="text" class="indata" id="uid" name="uid" placeholder="아이디 입력"
			required autofocus></li>
			<li><input type="password" class="indata" id="upw" name="upw" placeholder="비밀번호 입력"
			required ></li>
			<li class="btn_frame">
			<input type="submit" value="로그인" id="submit" class="btn">
			<input type="reset" value="취소" id="reset" class="btn">
			</li>
		</ul>
	</form>
</div>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>