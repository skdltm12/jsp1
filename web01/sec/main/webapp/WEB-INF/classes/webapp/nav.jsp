<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String[] dp1 = {"회사소개","제품소개","보유설비","고객지원"};
String[][] dp2 = {{"인사말","연혁","보유인증","오시는 길"},
		{"표면처리","Door","Wall","천정판"},
		{"판금설비","표면처리설비","공정도"},
		{"공지사항","영업문의"}};
String[][] lnk = {{"intro/sub01/01_01.jsp","intro/sub01/02_01.jsp","intro/sub01/04_01.jsp","intro/sub01/07_01.jsp"},
		{"sub02/01_01.jsp","sub02/02_01.jsp","sub02/03_01.jsp","sub02/04_01.jsp"},
		{"sub03/01_01.jsp","sub03/02_01.jsp","sub03/03_01.jsp"},
		{"sub04/01_01.jsp","sub04/02_01.jsp"}};
%>
<a href="index.jsp"><img src="./img/logo.jpg" alt="로고"></a>
<nav id="gnb">
<ul >
<%
	for(int i=0;i<dp1.length;i++){
%>
<li >
	<span class="dp1"><%=dp1[i] %></span>
	<ul class="sub">
<%
		for(int j=0;j<dp2[i].length;j++){
%>
	<li><a class="dp2" href="<%=lnk[i][j] %>"><%=dp2[i][j] %></a></li>
<%
		}
%>
	</ul>
</li>	
<%
	}
%>
</ul>
</nav>
                <p id="tnb">
                <%
                String sid = (String)session.getAttribute("uid");
                String sname = (String)session.getAttribute("name");
                if(sid==null){
                %>
               <a href="login.jsp">로그인</a>
               <a href="">손님</a>
               <a href="agree.jsp">회원가입</a>
                <%
                }else if (!sid.equals("admin")){
                %>
                <a href="logout.jsp">로그아웃</a>
                <a href="mypage.jsp"><%=sname %></a> 
                <a href="">오시는 길</a>
                <a href="board1.jsp">게시판</a>
              
                <%
                }else{
                %>                        
                    <a href="board1.jsp">게시판관리</a>
                    <a href="memberList.jsp">회원목록</a>
                    <a href="">오시는 길</a>
                    <a href="logout.jsp">로그아웃</a>
                    <a href="mypage.jsp"><%=sname %></a>
					<span id="msg_a"></span>
					<%
                }
					%>
					
</p>
<script>
	//주소 입력줄로 받은 msg를 받아 출력하는 부분임
	var url = location.href;  //url입력줄의 메시지를 포함한 주소를 저장
	var pos = url.indexOf("?msg=");
	var msg = url.substr(pos+5); //메시지만 추출
	//msg_a.innerHTML = decodeURI(msg);
	if(pos>0) {
		if(msg!=""){
			alert(msg);
			var msg_a = document.getElementById("msg_a"); //해당 msg_a 아이디 요소 선택
			msg_a.innerHTML = msg;
		}
	}
	
</script>