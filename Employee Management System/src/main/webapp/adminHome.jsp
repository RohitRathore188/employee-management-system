<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#div1 {
	width: 500px;
	height: 200px;
	margin-top: 30px;
	margin-left: 510px;
}

#img1 {
	width: 300px;
	height: 320px;
	margin-left: 620px;
	margin-top: 40px;
}

h1 {
	-webkit-text-stroke: 1px blue;
	color: black;
	text-decoration: none;
	text-shadow: navy;
	font-family: inherit;
}

.option {
	background-image: url("image/bgadmin.jpg");
	width: 300px;
	height: 150px;
	position: absolute;
}

.buttons{
     width: 700px;
     height: 100px;
   /* border: 2px solid red;  */  
   margin-right: 800px;
     
}



</style>
</head>
<%@include file="adminHeader.jsp"%>
<body style= background-image:url("image/bgadmin.jpg")>
	<img id="img1" alt="" src="image/login1.png">
	<div id="div1">
		<%
		String un = (String) session.getAttribute("user");
		if (un == null)
			response.sendRedirect("adminlogin.jsp");
		%>
		<h1 style="text-align: center;">
			Welcome <br> (<%=un%>) <br> Login Successful
		</h1>
		
			<div class="buttons">
				<a href="employeeRegistration.jsp"><button type="button" href="employeeRegistration.jsp" class="btn btn-primary btn-lg">
					Register Employee</button></a>
					
				<a href="DetailsController"><button type="button" class="btn btn-primary btn-lg">Employee
					Details</button></a>
					
					
				<a href="InquiryDetailsCtrl"><button type="button" class="btn btn-primary btn-lg">Inquiry
					Details</button></a>
			</div>
		

	</div>
</body>
</html>