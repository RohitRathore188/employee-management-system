
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<style type="text/css">
.carousel-inner {
	margin: auto;
	width: 800px;
	height: 800px;
	padding: 1px; . carousel-inner > .item > img { width : 750px;
	height: 750px;
}

}
#div {
	display: flex;
	/* border: solid black 2px; */
}

#div1 {
	margin: 0;
	padding: 0;
	width: 800px;
	height: 500px;
	float: left;
	align-items: center;
	/* border: solid red 2px; */
}

#img1 {
	margin-top: 65px;
}

#div2 {
	margin: 0;
	padding: 0;
	width: 800px;
	height: 500px;
	float: right;
	/* border: solid red 2px; */
}

#slider {
	margin: 0;
	padding: 0;
	width: 1500px;
}

h1 {
	-webkit-text-stroke: 2px blue;
	color: white;
	text-decoration: none;
	text-shadow: navy;
	font-family: inherit;
}

h1 {
	font-style: inherit;
	font-size: 50px;
}

#img5 {
	align-items: center;
	width: 1000px;
	height: 600px;
	margin-left: 270px;
}

p {
	font-weight: 400;
	font-size: larger;
	font-family: sans-serif;
}

container-fluid {
	width: 800px;
	height: 600px;
}

/*   */
</style>
</head>
<%@include file="frontHeader.jsp"%>
<body style="background-color: #101357">

	<div class="container-fluid">
		<img class="d-block w-100" src="image/cover3.png" alt="First slide"
			height="250px;" width="800px;">
	</div>
	
	<br> <br>

	<div id="div">
		<div id="div1">
			<center>
				<img id="img1" alt="" src="image/small_gif.svg">
			</center>
		</div>
		<div id="div2">
			<h1
				style="text-align: center; text-shadow: blue; margin-top: 120px; ">
				WE CAN MANAGE <br> <br> ALL EMPLOYEE RELATED <br> <br>
				SERVICES
			</h1>
		</div>
	</div>


	<div class="" style="display: flex;">
		<img src="image/p2.gif" class="card-img-top" id="img5" alt="...">

	</div>
<br> <br> <br>

	<div class="container">
		<p style="color: white;">An employee management system is a distributed system developed
			to maintain the employee details and the company workflow process
			systematically.</p>

		<p style="color: white;">EMS helps to eliminate the manual process and saves a lot of
			time and money. This system maintains the professional and personal
			details of the employees and the company in a safe manner. The
			employee management system lowers the burden and the pressure on HRs
			and the business managers. Thanks to the technology which offers us a
			plethora of solutions which makes the work easier and faster.</p>


		<h5 style="color: white;">Some of the common benefits of having an
			EMS in your organization are-</h5>

		<li style="color: white;">Efficiency And Better Accuracy</li>
		<li style="color: white;">Fewer Compliance Risks</li>
		<li style="color: white;">Boosted Profitability</li>
		<li style="color: white;">Very Few Manual Errors</li>
		<li style="color: white;">Higher Productivity</li>
		<li style="color: white;">Higher Motivation</li>
		<li style="color: white;">Lower Costs</li>

	</div>
	<br>
	<br>
	<center>
		<div class="container-fluid" id="slider">
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">

					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>

				</ol>
				<div class="carousel-inner" data-ride="carousel"
					data-interval="2000">
					<div class="carousel-item active w-85 p-1">
						<img class="d-block w-100" src="image/slide1.jpg"
							alt="First slide">
					</div>
					<div class="carousel-item w-85 p-1">
						<img class="d-block w-100" src="image/slide2.jpg"
							alt="Second slide">
					</div>
					<div class="carousel-item w-85 p-1">
						<img class="d-block w-100" src="image/slide3.jpg"
							alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>

				</a>
			</div>
		</div>
	</center>
</body>
</html>