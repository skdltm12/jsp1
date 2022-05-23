package kr.go.yeosu.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class FileUpload
 */
@WebServlet("/FileUpload")
public class FileUploadCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=URF=8");
		PrintWriter out = response.getWriter();
		String uploadPath="C:\\sw\\jps1\\web02\\src\\main\\webapp\\upload";
		int size=10*1024*1024;
		String name="";
		String subject="";
		String filename1="";
		String filename2="";
		try {
			MultipartRequest multi=new MultipartRequest(request, uploadPath, size, "UTF-8");
			name=multi.getParameter("name");
			subject = multi.getParameter("subject");
			Enumeration files=multi.getFileNames();
			String file1 = (String)files.nextElement();
			filename1=multi.getFilesystemName(file1);
			String file2 = (String)files.nextElement();
			filename2=multi.getFilesystemName(file2);
			
			out.println("<p>이름 : "+name+"</p>");
			out.println("<p>제목 : "+subject+"</p>");
			out.println("<p>이미지1 : "+filename1+"</p>");
			out.println("<p>이미지2 : "+filename2+"</p>");			
		}catch(Exception e) {
			e.printStackTrace();
		}		
	}

}
