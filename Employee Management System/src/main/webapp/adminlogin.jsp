<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="frontHeader.jsp"%>

<body style= background-image:url("image/bgadmin.jpg")>
	<div class="container">
		<br> <br>
		<h1 style="text-align: center;" class="jumbotron">ADMIN LOGIN</h1>
		<%
			String mm = (String) request.getAttribute("msg");
		if (mm != null) {
			out.println("<h2 style='color:green;'> " + mm + "</h2>");
		}
		%>
		<form action="checkLogin" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">USER NAME</label> <input type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="uname">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">PASSWORD</label> <input
					type="password" name="pass" class="form-control"
					id="exampleInputPassword1">
			</div>
			<button type="submit" class="btn btn-primary">LOGIN</button>
		</form>
	</div>
</body>
</html>