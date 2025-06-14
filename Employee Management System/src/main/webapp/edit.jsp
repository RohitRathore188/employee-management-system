<%@page import="com.infovian.dto.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="adminHeader.jsp"%>
<body style= background-image:url("image/bgadmin.jpg")  >
	<div class="container">
		<h1 class="jumbotron">Employee Updation Form</h1>
		<%
			Employee m = (Employee) request.getAttribute("EMP");
		String un = (String) session.getAttribute("user");
		if (un == null)
			response.sendRedirect("adminlogin.jsp");
		%>
		<h2>
			<%=un%>
		</h2>
		<form action="updateCtrl" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE ID</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="eid" value="<%=m.getId()%>"
					readonly="readonly">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE NAME</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="ename" value="<%=m.getName()%>">
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE DESIGNATION</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="edesignation"
					value="<%=m.getDesignation()%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE SALARY</label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="esalary"
					value="<%=m.getSalary()%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE DOJ</label> <input
					type="date" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="edoj" value="<%=m.getDoj()%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE EMAIL</label> <input
					type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="eemail"
					value="<%=m.getEmail()%>">
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE ADDRESS</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="eaddress"
					value="<%=m.getAddress()%>">
			</div>

			<button type="submit" class="btn btn-primary">UPDATE</button>
			<button type="reset" class="btn btn-primary">CLEAR</button>
		</form>
	</div>
</body>
</html>