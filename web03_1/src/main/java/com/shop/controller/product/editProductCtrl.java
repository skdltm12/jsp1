package com.shop.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.ProductVO;
import com.shop.model.ProductDAO;


@WebServlet("/editProductCtrl")
public class editProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public editProductCtrl() {
        super();
 
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String cate_id = request.getParameter("cate_id");
		int pid = Integer.parseInt(request.getParameter("pid"));
		String pname = request.getParameter("pname");
		String pcontent = request.getParameter("pcontent");
		int pprice = Integer.parseInt(request.getParameter("pprice"));
		int pamount = Integer.parseInt(request.getParameter("pamount"));
		String pimg = request.getParameter("pimg");
				
		ProductVO vo = new ProductVO();
		vo.setCate_id(cate_id);
		vo.setPid(pid);
		vo.setPname(pname);
		vo.setPcontent(pcontent);
		vo.setPprice(pprice);
		vo.setPamount(pamount);
		vo.setPimg(pimg);
		
		ProductDAO dao = new ProductDAO();
		int cnt = dao.editProduct(vo);
		if(cnt>0) {  //글 수정 성공
			response.sendRedirect("getProductListCtrl");
		} else {  //글 수정 실패
			response.sendRedirect("getProductCtrl?num="+pid);
		}	
	}



	}


