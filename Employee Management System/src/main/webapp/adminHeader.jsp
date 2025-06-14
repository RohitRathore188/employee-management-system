<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
	
	<style type="text/css">

	nav{
	
	backdrop-filter:blur(30px);
}
	</style>
	
</head>


<body >

	<nav class="navbar navbar-expand-lg navbar navbar-dark navbar navbar sticky-top">
		<a class="navbar-brand" href="adminHome.jsp"> <img src="image/adminlogo.png"
			width="50" height="50" alt="icon">
		</a>
	
	&nbsp; &nbsp; &nbsp; &nbsp; 
	<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			
		</button>

		<!-- <div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="adminHome.jsp"> Admin Home
						<span class="sr-only">(current)</span>
				</a></li>
				
				&nbsp; &nbsp;
				
				<li class="nav-item active"><a class="nav-link"
					href="employeeRegistration.jsp">Register Employee<span
						class="sr-only">(current)</span>
				</a></li>
				
				&nbsp; &nbsp;
				
				<li class="nav-item active"><a class="nav-link"
					href="DetailsController">Employee Details<span class="sr-only">(current)</span>
				</a></li>
				
				&nbsp; &nbsp;
				
				<li class="nav-item active"><a class="nav-link"
					href="InquiryDetailsCtrl">Inquiry Details<span class="sr-only">(current)</span>
				</a></li>
				
			</ul> -->
			<form class="form-inline my-2 my-lg-0">
				<a href="logoutCtrl" class="btn btn-outline-danger my-2 my-sm-0">LOGOUT</a>
			</form>
		</div>
	</nav>
	
	<%
response.setHeader("cache-control", "no-store");
response.setHeader("pragma", "no-chache");
response.setHeader("expire", "0");
%>
	
</body>
</html>