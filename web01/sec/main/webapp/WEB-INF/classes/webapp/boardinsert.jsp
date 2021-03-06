<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
</head>
<body class="panel-body">
<header id="hd" class="panel-header">
	<div class="hd_wrap">
	<%@ include file="nav.jsp" %>
	</div>
</header>
	<div>
		<h2></h2>
		<form action="boardInsertPro.jsp" onsubmit="return insertcheck(this)">
			<table class="table">
				<tbody>
					<tr>
						<td>제목</td>
						<td><input type="text" name="btitle" id="btitle" autofocus size="48" required></td>
					</tr>
					<tr>
						<td>내용</td>
						<td>
							<textarea name="bontent" id="bontent" cols="50" rows="10" required ></textarea>
						</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input type="text" name="author" id="author" value=<%=sname %> required></td>
					</tr>
					<tr>
						<td><input type="submit" value="작성" class="btn btn-primary"></td>
						<td><input type="reset" value="취소" class="btn btn-primary"></td>
						<td><input onclick="location.href='board1.jsp'" class="btn btn-primary" value="목록"></td>
					</tr>
				</tbody>
			</table>
			<script>
			function insertcheck(f){
				var memo=f.bontent.value;
				if(memo.length>=480){
					alert("내용은 480자 이내여아 합니다");
					return false;
				}
			}
			</script>
		</form>
		
		<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
	</div>
</body>
</html>