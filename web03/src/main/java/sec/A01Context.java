package sec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A01Context
 */
@WebServlet(name = "A01Context.java", urlPatterns = { "/A01Context.java" })
public class A01Context extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletContext context = null;
	public A01Context() {
        super();    
    }
	@Override
	public void init(ServletConfig config) throws ServletException{
		context = config.getServletContext();)
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<h1>A01Context 호출</h1>");
		
		String admin = context.getInitParameter("admin");
		String path = context.getInitParameter("business-layer");
		out.println("<h1>"+admin+"</h1>");
		out.println("<h1>"+path+"</h1>");
		String commoncss = context.getInitParameter("commoincss");
		out.println("<h1>"+commoncss+"</h1>");
		out.println("<link rel='stylesheet' href='"+commoncss+"'/>");
		String dburl = context.getInitParameter("dburl");
		String dbid = context.getInitParameter("dbid");
		String dbpw = context.getInitParameter("dbpw");
		out.println("<h1>DB URL : "+dburl+"</h1>");
		out.println("<h1>DB USER : "+dbid+"</h1>");
		out.println("<h1>DB PASSWORD : "+dbpw+"</h1>");
	
		String name = request.getParameter("name");
		out.println("<h1>"+name+"</h1>");
	}
}
