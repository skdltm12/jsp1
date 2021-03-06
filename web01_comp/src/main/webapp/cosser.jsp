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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
    <!--스타일 초기화 모듈 연결 -->
       <!-- <link rel="stylesheet" href="./css/reset.css"> -->
       <link rel="stylesheet" href="./css/normalize.css">
       <link rel="stylesheet" href="common.css">
       <link rel="stylesheet" href="sub_common.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="datatables.min.js"></script>
<script>
$(document).ready( function () {
    $('#myTable').DataTable();
});
</script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>
<body>
    <div class="wrap">
        <header id="hd">
            <div class = "hd_wrap">
                <%@ include file="nav.jsp" %>
            </div>            
        </header>
        <div id="content">
            <div class="content_wrap">
                <section class="page" id="page1">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top4.jpg" alt="서브탑">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">고객지원</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">고객지원</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="cosser.jsp#page1" selected>공지사항</option>
                                        <option value="cosser.jsp#page2">영업문의</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">                               
                                <a href="./cosser.jsp#page1" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="표면처리1">
                                <a href="./cosser.jsp#page2" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>공지사항</h2>
                                <p>HOME>고객지원>공지사항</p>
                                <br><br>
                                <hr>                                
                            </div>
							<div class="panel-body">
<div class="container-fluid">
	<table class="table" id="myTable">
		<thead>
		<tr>
			<td>번호&nbsp;&nbsp;</td>
			<td>제목&nbsp;&nbsp;</td>
			<td>작성일&nbsp;&nbsp;</td>
			<td>작성자&nbsp;&nbsp;</td>
		</tr>
		<thead>
		<tbody>
	<%
	request.setCharacterEncoding("UTF-8");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234!");
		String sql = "select * from board";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()){
%>
		<tr>
			<td><%=rs.getInt("bno") %>&nbsp;&nbsp; </td>
			<td><a href='boardDetail.jsp?bno=<%=rs.getInt("bno") %>'><%=rs.getString("btitle")%>&nbsp;&nbsp; </a></td>				 
			<td><%=rs.getString("regdate") %>&nbsp;&nbsp; </td>
			<td><%=rs.getString("author") %>&nbsp;&nbsp; </td>
		</tr>	
		<tr>
		
<%
		}
%>		
<%	

	}catch(Exception e){
		e.printStackTrace();
	}finally{
		
	}try{
		rs.close();
		pstmt.close();
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	
	</tbody>
	</table>
	<% if(sid==null){%>
				<p></p>
<% }else if(sid.equals("admin")){ %>
<button class="btn btn-primary" onclick="location.href='boardinsert.jsp'" >글쓰기</button>
<%
} else{
%>
<p></p>
<%
}
%>
	</div>
	</div>
                        </div>
                    </div>
                </section>
                <section class="page" id="page2">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top4.jpg" alt="서브탑">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">고객지원</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">고객지원</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="cosser.jsp#page1">공지사항</option>
                                        <option value="cosser.jsp#page2" selected>영업문의</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">                               
                                <a href="./cosser.jsp#page1" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="표면처리1">
                                <a href="./cosser.jsp#page2" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>영업문의</h2>
                                <p>HOME>고객지원>영업문의</p>
                                <br><br>
                                <hr>
                                <p>현대기업 [개인정보처리자] 은(는) 온라인 상담 서비스 제공을 위한 개인정보 수집·이용을 위하여 개인정보 보호법 제15조 및 제22조에 따라 귀하의 동의를 받고자합니다.</p>
                                <div class=tb12_div>
                                <table class="table">
                                	<tr>
                                		<th>* 글쓴이</th>
                                		<td><input type="text" required></td>
                                	</tr>
                                	<tr>
                                	    <th>* 연락처</th>
                                		<td><input type="text" required></td>
                                	</tr>
                                	<tr>
                                	    <th>* E-mail</th>
                                		<td><input type="text" required></td>
                                	</tr>
                                	<tr>
										<th>제목</th>
                                		<td><input type="text"></td>
                                	</tr>
                                	<tr>
										<th>내용</th>
                                		<td><textarea cols="50" rows="10"></textarea></td>
                                	</tr>
                                </table> 
                                <button class="btn btn-primary">신청하기</button>
                                </div>                              
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <script>
            $(document).ready(function(){
                $(".sel").change(function(){
                    location.href = this.value;
                });
            });    
            </script>
        </div>
           
        </div>
    <footer id="ft">
		<%@ include file="ft.jsp" %> 
      </footer>
    
</body>
</html>
