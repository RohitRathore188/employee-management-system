package com.infoviaan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.infoviaan.dao.AdminModel;
import com.infovian.dto.Employee;

@WebServlet("/registerCtrl")
public class RegisterCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ename = request.getParameter("ename");  
		String eid = request.getParameter("eid");
		String designation = request.getParameter("edesignation");
		double salary = Double.parseDouble(request.getParameter("esalary"));
		String doj = request.getParameter("edoj");
		String email = request.getParameter("eemail");
		String address = request.getParameter("eaddress");

		AdminModel model = new AdminModel();
		Employee ee = new Employee(ename, eid, designation, salary, doj, email, address);

		int i = model.register(ee);
		RequestDispatcher rd = request.getRequestDispatcher("employeeRegistration.jsp");

		if (i != 0) {
			request.setAttribute("msg", "Registration Successfull");
		} else {
			request.setAttribute("msg", "Registration Failed");
		}
		rd.forward(request, response);
	}
}