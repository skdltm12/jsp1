package com.shop.controller.product;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.ProductVO;
import com.shop.model.ProductDAO;


@WebServlet("/getProductCtrl")
public class getProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public getProductCtrl() {
        super();
 
    }
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		ProductDAO dao = new ProductDAO();
		ProductVO product = new ProductVO();
		product = dao.getProduct(num);
		if(product != null) {
			request.setAttribute("product", product);
			RequestDispatcher view = request.getRequestDispatcher("./product/getProduct.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("getProductListCtrl");
		}
	}
}
