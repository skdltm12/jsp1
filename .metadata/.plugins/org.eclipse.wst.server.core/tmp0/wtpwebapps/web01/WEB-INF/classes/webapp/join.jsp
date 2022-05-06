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