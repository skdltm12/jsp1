/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.60
 * Generated at: 2022-04-28 07:41:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class memberList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/ft.jsp", Long.valueOf(1650441899473L));
    _jspx_dependants.put("/nav.jsp", Long.valueOf(1651131694818L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>로그인</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css\">\r\n");
      out.write("<!-- 테마 -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css\">\r\n");
      out.write("<!-- 자바스크립트 -->\r\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"wrap\">\r\n");
      out.write("<header id=\"hd\" class=\"panel-heading\">\r\n");
      out.write("	<div class=\"hd_wrap\">\r\n");
      out.write("		");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");

String[] dp1 = {"회사소개","제품소개","보유설비","고객지원"};
String[][] dp2 = {{"인사말","연혁","보유인증","오시는 길"},
		{"표면처리","Door","Wall","천정판"},
		{"판금설비","표면처리설비","공정도"},
		{"공지사항","영업문의"}};
String[][] lnk = {{"intro/sub01/01_01.jsp","intro/sub01/02_01.jsp","intro/sub01/04_01.jsp","intro/sub01/07_01.jsp"},
		{"sub02/01_01.jsp","sub02/02_01.jsp","sub02/03_01.jsp","sub02/04_01.jsp"},
		{"sub03/01_01.jsp","sub03/02_01.jsp","sub03/03_01.jsp"},
		{"sub04/01_01.jsp","sub04/02_01.jsp"}};

      out.write("\r\n");
      out.write("<a href=\"index.jsp\"><img src=\"./img/logo.jpg\" alt=\"로고\"></a>\r\n");
      out.write("<nav id=\"gnb\">\r\n");
      out.write("<ul >\r\n");

	for(int i=0;i<dp1.length;i++){

      out.write("\r\n");
      out.write("<li >\r\n");
      out.write("	<span class=\"dp1\">");
      out.print(dp1[i] );
      out.write("</span>\r\n");
      out.write("	<ul class=\"sub\">\r\n");

		for(int j=0;j<dp2[i].length;j++){

      out.write("\r\n");
      out.write("	<li><a class=\"dp2\" href=\"");
      out.print(lnk[i][j] );
      out.write('"');
      out.write('>');
      out.print(dp2[i][j] );
      out.write("</a></li>\r\n");

		}

      out.write("\r\n");
      out.write("	</ul>\r\n");
      out.write("</li>	\r\n");

	}

      out.write("\r\n");
      out.write("</ul>\r\n");
      out.write("</nav>\r\n");
      out.write("                <p id=\"tnb\">\r\n");
      out.write("                ");

                String sid = (String)session.getAttribute("uid");
                String sname = (String)session.getAttribute("name");
                if(sid==null){
                
      out.write("\r\n");
      out.write("               <a href=\"login.jsp\">로그인</a>\r\n");
      out.write("               <a href=\"\">손님</a>\r\n");
      out.write("               <a href=\"agree.jsp\">회원가입</a>\r\n");
      out.write("                ");

                }else if (!sid.equals("admin")){
                
      out.write("\r\n");
      out.write("                <a href=\"logout.jsp\">로그아웃</a>\r\n");
      out.write("                <a href=\"mypage.jsp\">");
      out.print(sname );
      out.write("</a> \r\n");
      out.write("                <a href=\"\">오시는 길</a>\r\n");
      out.write("                ");

                }else{
                
      out.write("                        \r\n");
      out.write("                    <a href=\"boardList.jsp\">게시판관리</a>\r\n");
      out.write("                    <a href=\"memberList.jsp\">회원목록</a>\r\n");
      out.write("                    <a href=\"\">오시는 길</a>\r\n");
      out.write("                    <a href=\"logout.jsp\">로그아웃</a>\r\n");
      out.write("                    <a href=\"mypage.jsp\">");
      out.print(sname );
      out.write("</a>\r\n");
      out.write("					<span id=\"msg_a\"></span>\r\n");
      out.write("					");

                }
					
      out.write("\r\n");
      out.write("					\r\n");
      out.write("</p>\r\n");
      out.write("<script>\r\n");
      out.write("	//주소 입력줄로 받은 msg를 받아 출력하는 부분임\r\n");
      out.write("	var url = location.href;  //url입력줄의 메시지를 포함한 주소를 저장\r\n");
      out.write("	var pos = url.indexOf(\"?msg=\");\r\n");
      out.write("	var msg = url.substr(pos+5); //메시지만 추출\r\n");
      out.write("	//msg_a.innerHTML = decodeURI(msg);\r\n");
      out.write("	if(pos>0) {\r\n");
      out.write("		if(msg!=\"\"){\r\n");
      out.write("			alert(msg);\r\n");
      out.write("			var msg_a = document.getElementById(\"msg_a\"); //해당 msg_a 아이디 요소 선택\r\n");
      out.write("			msg_a.innerHTML = msg;\r\n");
      out.write("		}\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("</script>");
      out.write("\r\n");
      out.write("	</div>\r\n");
      out.write("</header>\r\n");
      out.write("<div class=\"content\" class=\"panel-body\">\r\n");
      out.write("	<h2>회원목록</h2>\r\n");
      out.write("	<table class=\"table\">\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th>아이디</th>\r\n");
      out.write("			<th>비밀번호</th>\r\n");
      out.write("			<th>이름</th>\r\n");
      out.write("			<th>연락처</th>\r\n");
      out.write("			<th>주소</th>\r\n");
      out.write("		</tr>\r\n");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Class.forName("org.mariadb.jdbc.Driver");  
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company", "root", "1234!");
		pstmt = conn.prepareStatement("select * from member");
		rs = pstmt.executeQuery();
		while(rs.next()){

      out.write("\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td>");
      out.print(rs.getString("id") );
      out.write("</td>\r\n");
      out.write("				<td>");
      out.print(rs.getString("pw") );
      out.write("</td>\r\n");
      out.write("				<td>");
      out.print(rs.getString("name") );
      out.write("</td>\r\n");
      out.write("				<td>");
      out.print(rs.getString("phone") );
      out.write("</td>\r\n");
      out.write("				<td>");
      out.print(rs.getString("address") );
      out.write("</td>\r\n");
      out.write("			</tr>\r\n");

		}
	}catch(Exception e){
		 System.out.println("SQL구문이 올바르게 처리되지 않았습니다.");
		e.printStackTrace();
	} finally {
		try{
			rs.close();
			pstmt.close();
			conn.close();		
		}catch(Exception e){
	e.printStackTrace();	
		}	
		
	}
	
	
	

      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("<footer id=\"ft\" class=\"panel-footer\">\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write(" <nav class=\"fnb\">\r\n");
      out.write("             <a href=\"\">개인정보 취급 방침</a>\r\n");
      out.write("             <a href=\"\">이용 약관</a>\r\n");
      out.write("             <a href=\"\">이메일 무단수집 거부</a>\r\n");
      out.write("\r\n");
      out.write("             <li>주식회사 현대기업 대표자 : 이호철</li>\r\n");
      out.write("            <li>경남 함안군 칠서면 공단동4길 94 Tel: 055-297-5701 Fax : 055-293-5936 E-mail : hdke@hdke.co.kr</li>         \r\n");
      out.write("            <p>Copyright(c) 2021 Hyundae Co.,Ltd. Al rights reserved. Disigned by</p>\r\n");
      out.write("            </nav>");
      out.write("\r\n");
      out.write("</footer>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
