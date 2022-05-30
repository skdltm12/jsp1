package com.shop.controller.product;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.shop.common.ProductVO;
import com.shop.model.ProductDAO;


@WebServlet("/getProductListCtrl")
public class getProductListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public getProductListCtrl() {
        super();
       
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductVO> list = dao.getProductList();
		request.setAttribute("list", list);
		RequestDispatcher view = request.getRequestDispatcher("./product/getProductList.jsp");
		view.forward(request, response);
	}

}
