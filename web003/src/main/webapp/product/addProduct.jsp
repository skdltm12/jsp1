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
<title>상품추가하기</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div id="content">
	<section class="con_wrap">
		<h2>상품추가하기</h2>
		<form action="${path1 }/addProductCtrl" method="post">
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>상품코드</th>
						<td>						
							<input type="text" name="pid" value="" required>
						</td>
					</tr>
					<tr>
						<th>카테고리 코드</th>
						<td>						
							<input type="text" name="cate_id" value="" required>
						</td>
					</tr>
					<tr>
						<th>상품명</th>
						<td>
							<input type="text" name="pname" value="" required>
						</td>												
					</tr>
					<tr>
						<th>가격</th>
						<td>
							<input type="number" name="pprice" value="9900" step="100" required>
						</td>												
					</tr>
					<tr>
						<th>내용</th>
						<td>			
							<textarea cols="100" rows ="7" name="pcontent" required></textarea>
						</td>
					</tr>
					<tr>
						<th>재고</th>
						<td>			
							<input type="number" name="pamount" value="0" required>
						</td>
					</tr>
					<tr>
						<th>상품 이미지 경로</th>
						<td>			
							<input type="text" name="pimg" value="" required>
						</td>
					</tr>		
					<tr>
						<td colspan="2">
							<input type="submit" value="등록" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
							<a href="${path1 }/GetBoardListCtrl" class="button is-info">목록</a>
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