package com.infoviaan.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.infoviaan.dao.AdminModel;
import com.infovian.dto.Inquiry;
import com.infovian.dto.Employee;
import com.infovian.dto.Inquiry;

@WebServlet("/InquiryCtrl")
public class InquiryCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fname = request.getParameter("fname");  
		String lname = request.getParameter("lname");
		String mob = request.getParameter("mob");
		String mail = request.getParameter("mail");
		String addr = request.getParameter("addr");
		String msg = request.getParameter("msg");
		
		

		AdminModel model = new AdminModel();
		Inquiry in = new Inquiry(fname, lname, mob, mail, addr, msg);
				int i = model.Customer(in);
		RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");

		if (i != 0) {
			request.setAttribute("msg", "Details Sent");
		} else {
			request.setAttribute("msg", " Failed");
		}
		rd.forward(request, response);
	}
}