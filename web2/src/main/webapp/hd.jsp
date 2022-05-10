<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String)session.getAttribute("sid");
	String sname = (String)session.getAttribute("sname");
	if(sid!=null) sid=sid.trim().toLowerCase();
%>
<div class="hd_wrap">
	<nav id="gnb"></nav>
	<nav id="tnb">
		<ul>
			<li><a href="/web2/GetCustomerListCtrl">회원목록</a></li>
		</ul>
	</nav>
</div>