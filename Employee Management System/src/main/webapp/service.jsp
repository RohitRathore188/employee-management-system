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
#parent {
	margin: 0;
	padding: 0;
	display: flex;
}

img-img1 {
	
}

h1 {
	-webkit-text-stroke: 2px blue;
	color: white;
	text-decoration: none;
	text-shadow: navy;
	font-family: inherit;
	text-align: center;
}
</style>


</head>
<%@include file="frontHeader.jsp"%>
<body style="background-color: #101357">

	<h1>Our Services</h1>
	<br> <br>

	<div class="row row-cols-1 row-cols-md-3" id="parent">
		<div class="col mb-4">
			<div class="card">
				<img src="image/EmployeeEngagement.svg" class="card-img-top"
					alt="..." style="width: 80px; height: 80px;"> <br>
				<div class="card-body">
					<h5 class="card-title">Employee Engagement</h5>
					<p class="card-text">With a self-service portal, employees are
						more engaged and feel more empowered in your organization
				</div>
			</div>
		</div>
		<div class="col mb-4">
			<div class="card">
				<img src="image/Error-free-Payroll.svg" class="card-img-top"
					alt="..." style="width: 80px; height: 80px;"> <br>
				<div class="card-body">
					<h5 class="card-title">Error-free Payroll</h5>
					<p class="card-text">The software automates the payroll with
						accurate attendance, working hours tracking and legal compliance..</p>
				</div>
			</div>
		</div>
		<div class="col mb-4">
			<div class="card">
				<img src="image/Access-to-Information.svg" class="card-img-top"
					alt="..." style="width: 80px; height: 80px;"> <br>
				<div class="card-body">
					<h5 class="card-title">Access to Information</h5>
					<p class="card-text">The staff can access the basic information
						on the portal without approaching human resources for it.</p>
				</div>
			</div>
		</div>

		<div class="col mb-4">
			<div class="card">
				<img src="image/Remote-Accessibility.svg" class="card-img-top"
					alt="..." style="width: 80px; height: 80px;"> <br>
				<div class="card-body">
					<h5 class="card-title">Remote Accessibility</h5>
					<p class="card-text">This system allows your staff to work
						remotely and mark their attendance accurately anywhere
						effortlessly.</p>
				</div>
			</div>
		</div>
		<div class="col mb-4">
			<div class="card">
				<img id="img1" src="image/Automate-Data.svg" class="card-img-top"
					alt="..." style="width: 80px; height: 80px;"> <br>
				<div class="card-body">
					<h5 class="card-title">Automate Data Entry</h5>
					<p class="card-text">The cloud-based system allows you to
						automate and digitize manual data entry saving time and effort.</p>
				</div>
			</div>
		</div>
		<div class="col mb-4">
			<div class="card">
				<img src="image/Easy-to-Customise.svg" class="card-img-top"
					alt="..." style="width: 80px; height: 80px;"> <br>
				<div class="card-body">
					<h5 class="card-title">Easy to Customise</h5>
					<p class="card-text">Pocket HRMS is easy to customize system
						which allows you flexibility with changing needs of your
						organization.</p>
				</div>
			</div>
		</div>

	</div>


</body>
</html>