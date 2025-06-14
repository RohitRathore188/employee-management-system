<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="adminHeader.jsp"%>
<body style= background-image:url("image/bgadmin.jpg")>
	<div class="container">
		<h1 style="text-align: center;" class="jumbotron">Employee Registration Form</h1>
		<%
			String un = (String) session.getAttribute("user");
		if (un == null)
			response.sendRedirect("adminlogin.jsp");
		%>

		<%
			String m = (String) request.getAttribute("msg");
		if (m != null) {
			out.println("<h2 style='color:green;'>" + m + " </h2>");
		}
		%>
		
		<h2 style="text-align: center;">
			WELCOME
			&nbsp;
			( <%=un%> )  </h2>
			
			<br>
			
		<form action="registerCtrl" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE NAME</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="ename">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE ID</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="eid">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE DESIGNATION</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="edesignation">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE SALARY</label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="esalary">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE DOJ</label> <input
					type="date" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="edoj">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE EMAIL</label> <input
					type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="eemail">
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE ADDRESS</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="eaddress">
			</div>
<br>
			<button type="submit" class="btn btn-primary">SUBMIT</button>
			&nbsp; &nbsp;
			<button type="reset" class="btn btn-primary">CLEAR</button>
		</form>
	</div>
</body>
</html>