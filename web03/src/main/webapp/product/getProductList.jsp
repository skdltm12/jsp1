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
<title>상품 목록</title>
<style>
#lst_tb { width:700px; margin:0 auto; }
.navbar-link:not(.is-arrowless)::after { display:none; }
</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<%-- <c:if test="${empty name }"><c:redirect url="../member/login.jsp" /></c:if> --%>
<div id="content" class="content_wrap">
	<div>
		<%-- <h3>${name }님 &nbsp; &nbsp; <a href="../LogoutCtrl">로그아웃</a></h3> --%>
	</div>
	<h2>상품 목록</h2>
	<form method="post" action="../GetBoardSearchCtrl">
<%--		<table class="table" id="search_tb">
			<tr>
				<td>
					<select name="searchCondition">
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select>
					<input type="text" name="searchKeyword" />
					<input type="submit" value="검색" />
				</td>
			</tr>
		</table>
--%>
	</form>
	<table class="table" id="lst_tb">
		<thead>
			<tr>
				<th class="item1">번호</th>
				<th class="item2">이름</th>
				<th class="item3">수량</th>
				<th class="item4">가격</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="vo" varStatus="status">
			<tr>
				<td>${vo.cate_id }${vo.pid }</td>
				<td><a href="../getProductCtrl?num=${vo.pid }">${vo.pname }</a></td>
				<td>${vo.pamount }</td>
				<td>${vo.pprice }</td>
				<td><img src="${path }${vo.pimg }" alt="이미지"></td>
			</tr>
		</c:forEach>
		<c:if test="${sid=='admin' }">
			<tr>
				<td colspan="4"><a href="${path }/product/addProduct.jsp">글 등록</a></td>
			</tr>
		</c:if>	
		</tbody>
	</table>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>