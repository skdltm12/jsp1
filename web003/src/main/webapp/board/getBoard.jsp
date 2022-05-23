<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" />
<title>게시판 목록</title>
<style>
#lst_tb { width:700px; margin:0 auto; }
.navbar-link:not(.is-arrowless)::after { display:none; }
</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<h2>글 상세보기</h2>
	<form action="" method="post">
		<table class="table">
			<tbody>
				<tr>
					<th>글 번호</th>
					<td></td>
				</tr>
				<tr>
					<th>글 제목</th>
					<td></td>
				</tr>
				<tr>
					<th>글 내용</th>
					<td></td>
				</tr>
				<tr>
					<th>글 작성자</th>
					<td></td>
				</tr>
				<tr>
					<th>작성일</th>
					<td></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>