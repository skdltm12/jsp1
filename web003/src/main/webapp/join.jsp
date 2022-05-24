<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" />
<title>개인정보 처리 방침 및 이용 약관</title>
<jsp:include page="./common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="./header.jsp"></jsp:include>
<div id="content">
	<section class="con_wrap">
		<h2>개인정보 처리 방침 및 개인정보 이용 약관</h2>
		<form action="/addMemberCtrl" method="post">
			<table class="table" id="lst_tb">								
				<tbody>
					<tr>
						<th>이름</th>
						<td><input type="text" name="mname" required></td>					
					</tr>
					<tr>
						<th>아이디</th>
						<td><input type="text" name="mid" value="hidden" required></td>					
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="mpw" id="pwck1" required></td>					
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="password" id="pwck2" required></td>					
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="tel" value="010" readonly size="1">&nbsp;-&nbsp;<input type="tel" size="2" name="mtel1" required>&nbsp;-&nbsp;<input type="tel" size="2" required name="mtel2"></td>					
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" name="maddress"></td>					
					</tr>
					<tr>
						<td><input type="submit" value="가입하기"></td>
						<td><input type="reset" value="취소"></td>
					</tr>
				</tbody>					
			</table>
		</form>
			
	</section>
</div>
<jsp:include page="./footer.jsp"></jsp:include>
</body>
</html>