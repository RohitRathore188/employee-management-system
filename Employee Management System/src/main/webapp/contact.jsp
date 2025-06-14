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
	div {
	display: flex;
}
	</style>

</head>
<%@include file="frontHeader.jsp"%>

	


<body style="background-color: #101357">
	<div id="div1">
		<center>
			<img style="width: 1500px; height: 350px;" alt=""
				src="image/head1.jpg">
		</center>
	</div>
	
	<br> <br> <br> 
	<div id="div">
		<div id="div1">
			<center>
				<img id="img1" alt="" src="image/contact.gif">
			</center>
		</div>
		<div id="div1">
			
			<form action="InquiryCtrl" method="post" class="needs-validation"  style="margin-top: 200px; margin-left: 170px;">
  <div class="form-row" >
    <div class="col-md-6 mb-3">
      <label for="validationTooltip01"></label>
      <input type="text" class="form-control" id="validationTooltip01" placeholder="First name" required name="fname">
      <div class="valid-tooltip">
        
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationTooltip02"></label>
      <input type="text" class="form-control" id="validationTooltip02" placeholder="last name" required name="lname">
      <div class="valid-tooltip">
        
      </div>
    </div>
  </div>
  
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationTooltip01"></label>
      <input type="text" class="form-control" id="validationTooltip01" placeholder="Mobile No." required name="mob">
      <div class="valid-tooltip">
        
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationTooltip02"></label>
      <input type="text" class="form-control" id="validationTooltip02" placeholder="Mail Id" required name="mail">
      <div class="valid-tooltip">
        
      </div>
    </div>
  </div>
  
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationTooltip01"></label>
      <input type="text" class="form-control" placeholder="Address" id="validationTooltip01"  required name="addr">
      <div class="valid-tooltip">
        
      </div>
    </div>
    
    <br>
    <div class="col-md-6 mb-3">
      <label for="validationTooltip02"></label>
      <input type="Address" class="form-control" id="validationTooltip02" placeholder="Message" required name="msg">
      <div class="valid-tooltip">
        
      </div>
    </div>
  </div>
  
  <button class="btn btn-primary" type="submit">Send</button>
  
  <%
			String m = (String) request.getAttribute("msg");
		if (m != null) {
			out.println("<h2 style='color:green;'>" + m + " </h2>");
		}
		%>
  
</form>
			
		</div>
	</div>
</body>
</html>