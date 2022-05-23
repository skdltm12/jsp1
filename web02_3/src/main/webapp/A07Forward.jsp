<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int mat = Integer.parseInt(request.getParameter("mat"));
	
	int tot = kor+mat;
	double avg = (float) tot/2.0;
	//out.println("<a href='A07Result.jsp?name="+name+"'></a>");
	request.setAttribute("name", name);
	request.setAttribute("kor", kor);
	request.setAttribute("mat", mat);
	request.setAttribute("tot", tot);
	request.setAttribute("avg", avg);
	RequestDispatcher view = request.getRequestDispatcher("A07Result.jsp");
	view.forward(request, response);
%>