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
		<a class="navbar-brand" href="home.jsp"> <img src="image/icon.png"
			width="50" height="50" alt="icon">
		</a>
		
		&nbsp; &nbsp; &nbsp; &nbsp; 
		
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			
		</button>
		
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="home.jsp">HOME
						<span class="sr-only">(current)</span>
				</a></li>
				
				&nbsp; &nbsp; 
				
				<li class="nav-item active"><a class="nav-link"
					href="service.jsp">SERVICES <span class="sr-only">(current)</span></a>
				</li>
				
				&nbsp; &nbsp; 
				
				<li class="nav-item active"><a class="nav-link"
					href="about.jsp">ABOUT US<span class="sr-only">(current)</span></a>
				</li>
				
				&nbsp; &nbsp; 
				
				<li class="nav-item active"><a class="nav-link"
					href="contact.jsp">CONTACT US <span class="sr-only">(current)</span></a>
				</li>
			</ul>
			
			&nbsp; &nbsp; 
			
			<form class="form-inline my-2 my-lg-0">
				<a href="adminlogin.jsp"
					class="btn btn-primary my-2 my-sm-0">ADMIN LOGIN</a>
			</form>
		</div>
	</nav>
</body>
</html>