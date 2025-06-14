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
import com.infovian.dto.Employee;

@WebServlet("/updateCtrl")
public class UpdateCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		AdminModel model = new AdminModel();
		Employee ee = model.getEmployeeRecord(id);
		RequestDispatcher rd = request.getRequestDispatcher("edit.jsp");
		request.setAttribute("EMP", ee);
		rd.forward(request, response);
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

		Employee em = new Employee(ename, eid, designation, salary, doj, email, address);

		AdminModel model = new AdminModel();
		int i = model.updateEmployee(em);
		ArrayList<Employee> list = model.getAllEmployee();
		RequestDispatcher rd = request.getRequestDispatcher("details.jsp");
		if (i != 0) {
			request.setAttribute("msg", "Record Updated Successfully");
			request.setAttribute("LIST", list);
		} else {
			request.setAttribute("msg", "Record Not Updated");
			request.setAttribute("LIST", list);
		}
		rd.forward(request, response);
	}
}