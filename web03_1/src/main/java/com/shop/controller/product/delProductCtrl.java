package com.shop.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.model.ProductDAO;

@WebServlet("/delProductCtrl")
public class delProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public delProductCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num")); 
		ProductDAO dao = new ProductDAO();		
		int cnt = dao.delProduct(num); 
		if(cnt>0) {  //글 삭제 성공
			response.sendRedirect("getProductListCtrl");
		} else {  //글 삭제 실패
			response.sendRedirect("getProductCtrl?num="+num);
		}	
	}

}
