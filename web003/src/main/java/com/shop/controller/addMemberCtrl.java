package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.MemberVO;


@WebServlet("/addMemberCtrl")
public class addMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public addMemberCtrl() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MemberVO mem = new MemberVO();
		mem.getMid();
		mem.getMpw();
	}

}
