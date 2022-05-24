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
			<table class="table" id="lst_tb">								
				<tbody>
					<tr><th>개인정보 처리방침</th></tr>
					<tr><td><textarea cols="100" rows="20">개인정보 처리 방침</textarea></td></tr>
					<tr>
						<td>동의</td>
						<td><input type="checkbox" id="ck1"></td>
					</tr>
					<tr><th>개인정보 이용약관</th></tr>
					<tr><td><textarea cols="100" rows="20">개인정보 이용 약관</textarea></td></tr>
					<tr>
						<td>동의</td>
						<td><input type="checkbox" id="ck2"></td>
					</tr>
				</tbody>
					
			</table>
			<button onclick="fnc1()">가입하기</button> <button onclick="location='index.jsp'">취소</button>
			
	</section>
</div>
<script>
		function fnc1(){
			var ck1 = document.getElementById("ck1");
			var ck2 = document.getElementById("ck2");
			if(ck1.checked && ck2.checked){
				location.href="join.jsp";
				return false;
			}else{
				alert("약관에 동의하지 않았습니다.");
				return false;
			}
		}
	</script>
<jsp:include page="./footer.jsp"></jsp:include>
</body>
</html>