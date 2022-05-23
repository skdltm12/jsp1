package com.shop.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.BoardVO;
import com.shop.model.BoardDAO;


@WebServlet("/GetBoardCtrl")
public class GetBoardCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GetBoardCtrl() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDAO dao = new BoardDAO();
		BoardVO board = new BoardVO();
		System.out.println(num);
		board = dao.getBoard(num);
		if(board != null) {
			request.setAttribute("vo", board);
			RequestDispatcher view = request.getRequestDispatcher("getBoard.jsp");
		}else {
			response.sendRedirect("GetBoardListCtrl");
		}
	}


}
