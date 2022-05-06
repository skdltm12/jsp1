<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav id="gnb">
                    <ul>
                        <li>
                            <span>회사소개</span>
                            <ul class="sub">
                                <li><a href="company.jsp#page1">인사말</a></li>
                                <li><a href="company.jsp#page2">연혁</a></li>
                                <li><a href="company.jsp#page3">보유인증</a></li>
                                <li><a href="company.jsp#page4">오시는길</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>제품소개</span>
                            <ul class="sub">
                                <li><a href="product.jsp#page1">표면처리</a></li>
                                <li><a href="product.jsp#page2">Door</a></li>
                                <li><a href="product.jsp#page3">Wall</a></li>
                                <li><a href="product.jsp#page4">천정판</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>보유설비</span>
                            <ul class="sub">                                
                                <li><a href="equipment.jsp#page1">판금설비</a></li>
                                <li><a href="equipment.jsp#page2">표면처리설비</a></li>
                                <li><a href="equipment#page3">공정도</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>고객지원</span>
                            <ul class="sub">
                                <li><a href="cosser#page1">공지사항</a></li>
                                <li><a href="cosser#page2">영업문의</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                                <p id="tnb">
                                    <%
                String sid = (String)session.getAttribute("uid");
                String sname = (String)session.getAttribute("name");
                if(sid==null){
                %>
               <a href="login.jsp">로그인</a>
               <a href="">사이트맵</a>
               <a href="agree.jsp">회원가입</a>
                <%
                }else if (!sid.equals("admin")){
                %>
                <a href="logout.jsp">로그아웃</a>
                <a href="mypage.jsp"><%=sname %></a> 
                <a href="company.jsp#page4">오시는 길</a>
                <a href="board1.jsp">게시판</a>
              
                <%
                }else{
                %>                        
                    <a href="board1.jsp">게시판관리</a>
                    <a href="memberList.jsp">회원목록</a>
                    <a href="company.jsp#page4">오시는 길</a>
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