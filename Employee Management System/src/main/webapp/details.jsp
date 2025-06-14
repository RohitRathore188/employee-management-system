<%@page import="com.infovian.dto.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



</head>
<%@include file="adminHeader.jsp"%>
<body style= background-image:url("image/bgadmin.jpg") >
	<%
		ArrayList<Employee> list = (ArrayList<Employee>) request.getAttribute("LIST");
	String mm = (String) request.getAttribute("msg");

	String un = (String) session.getAttribute("user");
	if (un == null)
		response.sendRedirect("adminlogin.jsp");
	%>

	<div class="container">
		<h2 style="text-align: center;" >
			Employee Details
			</h2>
		<%
			if (mm != null)
			out.println("<h2> " + mm + "</h2>");
		%>
		
		<br>
		<table class="table" border="2">
			<thead class="bg-primary">
				<th style="text-align: center;">NAME</th>
				<th style="text-align: center;">ID</th>
				<th style="text-align: center;">DESIGNATION</th>
				<th style="text-align: center;">SALARY</th>
				<th style="text-align: center;">DOJ</th>
				<th style="text-align: center;">EMAIL</th>
				<th style="text-align: center;">ADDRESS</th>
				<th style="text-align: center;">DELETION</th>
				<th style="text-align: center;">UPDATAION</th>
			</thead>
			<%
				for (Employee ee : list) {
			%>
			<tr>
				<td style="color: white; text-align: center;"><%=ee.getName()%></td>
				<td style="color: white; text-align: center;"><%=ee.getId()%></td>
				<td style="color: white; text-align: center;"><%=ee.getDesignation()%></td>
				<td style="color: white; text-align: center;"><%=ee.getSalary()%></td>
				<td style="color: white; text-align: center;"><%=ee.getDoj()%></td>
				<td style="color: white; text-align: center;"><%=ee.getEmail()%></td>
				<td style="color: white; text-align: center;"><%=ee.getAddress()%></td>
				<td style="color: white; text-align: center;"><a href="deleteCtrl?id=<%=ee.getId()%>"
					class="btn btn-danger"
					onclick="return confirm('Are You Sure To Delete This Record?')">DELETE
				</a></td>
				<td><a href="updateCtrl?id=<%=ee.getId()%>"
					class="btn btn-primary">UPDATE</a></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>

</body>
</html>