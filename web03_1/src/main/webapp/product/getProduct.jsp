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
<title>상품 상세보기</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div id="content">
	<section class="con_wrap">
		<h2>상품 상세보기</h2>
		<form action="${path1 }/editProductCtrl" method="post">
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>상품코드</th>
						<c:if test="${sid=='admin' }">
							<td>
								<input type="text" value="${product.cate_id }" name="cate_id" readonly>
								<input type="text" value="${product.pid }" name="pid" readonly>
							</td>
						</c:if>
						<td>	
							<p>${product.cate_id }${product.pid }</p> 	
						</td>
					</tr>
					<tr>
						<th>상품명</th>
						<c:if test="${sid=='admin' }">
							<td>
								<input type="text" value="${product.pname }" name="pname">								
							</td>
						</c:if>
						<td>			
							<p>${product.pname }</p>
						</td>
						
						
					</tr>
					<tr>
						<th>가격</th>
						<c:if test="${sid=='admin' }">
							<td>
								<input type="number" value="${product.pprice }" name="pprice">								
							</td>
						</c:if>
						<td>
							<p>${product.pprice }</p>	
						</td>
					</tr>
					<tr>
						<th>등록일</th>
						<td>${product.regdate }</td>
					</tr>
					<tr>
						<th>상세내용</th>
						<c:if test="${sid=='admin' }">
							<td>
								<textarea name="pcontent" cols="50" rows="20">${product.pcontent }</textarea>								
							</td>
						</c:if>
						<td>${product.pcontent }</td>
					</tr>
					<tr>					
						<th>남은 수량</th>
						<c:if test="${sid=='admin' }">
							<td>
								<input type="number" value="${product.pamount }" name="pamount">								
							</td>
						</c:if>
						<td>${product.pamount }</td>
					</tr>
					<tr>
						<th>상품 이미지</th>
						<c:if test="${sid=='admin' }">
							<td>
								<input type="text" value="${product.pimg }" name="pimg">								
							</td>
						</c:if>
							<td>${product.pimg }</td>
					</tr>
					
					<tr>
						<td colspan="2">
			<c:if test="${sid=='admin' }">
							<input type="submit" value="수정" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
							<a href="${path1 }/delProductCtrl?num=${product.pid }" class="button is-info">삭제</a>
			</c:if>
							<a href="${path1 }/getProductListCtrl" class="button is-info">목록</a>
						</td>
					</tr>
				</tbody>
			</table>
		</form>	
	</section>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>