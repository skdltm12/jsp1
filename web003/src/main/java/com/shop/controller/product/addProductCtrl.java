package com.shop.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.ProductVO;
import com.shop.model.ProductDAO;


@WebServlet("/addProductCtrl")
public class addProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public addProductCtrl() {
        super();
  
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int pid = Integer.parseInt(request.getParameter("pid"));
		String cate_id = request.getParameter("cate_id");
		String pname = request.getParameter("pname");
		int pprice = Integer.parseInt(request.getParameter("pprice"));
		String pcontent = request.getParameter("pcontent");
		int pamount = Integer.parseInt(request.getParameter("pamount"));
		String pimg = request.getParameter("pimg");
		
		ProductVO vo = new ProductVO();
		vo.setPid(pid);
		vo.setCate_id(cate_id);
		vo.setPname(pname);
		vo.setPprice(pprice);
		vo.setPcontent(pcontent);
		vo.setPamount(pamount);
		vo.setPimg(pimg);
		
		ProductDAO dao = new ProductDAO();
		int cnt = dao.addProduct(vo);
		System.out.println(pid+cate_id+pname+pprice+pcontent+pamount+pimg);
		if(cnt>0) { //등록 성공
			response.sendRedirect("getProductListCtrl");
		} else {  //등록 실패
			response.sendRedirect("index.jsp");
		}			
		}
		
	}


