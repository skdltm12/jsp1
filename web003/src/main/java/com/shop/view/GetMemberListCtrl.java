package com.shop.view;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.model.MemberDAO;

/**
 * Servlet implementation class GetMemberListCtrl
 */
@WebServlet("/GetMemberListCtrl")
public class GetMemberListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GetMemberListCtrl() {
        super();
     
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberVO>
	}



}
