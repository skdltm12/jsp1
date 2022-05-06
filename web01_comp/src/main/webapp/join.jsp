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
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="datatables.min.js"></script>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
</head>

<body>
<header id="hd">
	<div class="hd_wrap">
	<%@ include file="nav.jsp" %>
	</div>
</header>
<div>
	<h2>회원가입</h2>
	<form action="joinPro.jsp" method="post" name="joinform" onsubmit="return joincheck(this)">
		<table>
			<tbody>
			<tr>
				<td>이름 : </td>
				<td><input type="text" id="name" name="name" placeholder="이름 입력" autofocus required></td>
			</tr>
			<tr>
				<td>아이디 : </td>
<<<<<<< HEAD
				<td><input type="text" id="uid" name="uid" placeholder="아이디 입력" value="" required>
					<input type="button" id="popopen" onclick="idCheck()" value="아이디 중복 확인">
					<input type="hidden" id="idck" name="idck" value="">
=======
				<td>
					<input type="text" id="uid" name="uid" placeholder="아이디 입력" value="" required>
					<input type="hidden" id="idck" name="idck" value="">
					<input type="button" onclick="idCheck()" value="아이디 중복 확인">
>>>>>>> 3c83255d07ad55ecc155e21364ba1bab825f4b59
				</td>
			</tr>
			<tr>
				<td>비밀번호 : </td>
				<td><input type="password" id="upw" name="upw" placeholder="비밀번호 입력" value="" required></td>				
			</tr>
			<tr>
				<td>비밀번호 확인 : </td>
<<<<<<< HEAD
				<td><input type="password" id="upw2" name="upw2" placeholder="비밀번호 확인" required></td>
=======
				<td><input type="password" id="upw2" name="upw2" placeholder="비밀번호 확인" value="" required></td>
>>>>>>> 3c83255d07ad55ecc155e21364ba1bab825f4b59
			</tr>
			<tr>
				<td>주소 : </td>
				<td><input type="text" name="address" placeholder="주소 입력"></td>
			</tr>
			<tr>
				<td>전화번호 : </td>
				<td><input type="text" name="phone" placeholder="전화번호 입력"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="가입" class="btn btn-primary">&nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소" class="btn btn-primary">&nbsp; &nbsp; &nbsp;
					<input value="메인으로" onclick="location='index.jsp'" class="btn btn-primary" >
				</td>
			</tr>
		</tbody>
		</table>
					
		<script>
		function idCheck(){
			window.open('pop.jsp','아이디 중복 확인','width=500,height=500');
		}
		function joincheck(f){
			if(f.idck.value!="yes"){
				alert("아이디 중복 확인을 해야합니다.");
				return false;
			}
			if(f.upw.value!=f.upw2.value){
				alert("비밀번호 확인이 일치하지 않습니다." );
				return false;
			}
		}
		</script>
	</form>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</body>
</html>