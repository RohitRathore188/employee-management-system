package com.infoviaan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.infoviaan.dao.AdminModel;

@WebServlet("/checkLogin")
public class AdminLoginCtrl extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uu = req.getParameter("uname");
		String pwd = req.getParameter("pass");
		PrintWriter out = resp.getWriter();
		int i = 0;
		AdminModel model = new AdminModel();
		i = model.checkLogin(uu, pwd);
		
		
		
		if (i != 0) {
			HttpSession ss = req.getSession();
			ss.setAttribute("user", uu);
			
			// out.println("<h1 style='color:green;'> LOGIN SUCCESSFULL</h1>");
			resp.sendRedirect("adminHome.jsp");
		} else {
			// out.println("<h1 style='color:red;'> INVALID USER NAME OR PASSWORD</h1>");
			RequestDispatcher rd = req.getRequestDispatcher("adminlogin.jsp");
			req.setAttribute("msg", "Incorrect User Name or Password");
			rd.forward(req, resp);
		}
	}
}