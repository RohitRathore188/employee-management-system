<%@page import="java.util.ArrayList"%>
<%@page import="com.infovian.dto.Inquiry"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<%@include file="adminHeader.jsp"%>
<body style= background-image:url("image/bgadmin.jpg") >
	<%
		ArrayList<Inquiry> li = (ArrayList<Inquiry>) request.getAttribute("LIST");
	String mm = (String) request.getAttribute("msg");
	
	String un = (String) session.getAttribute("user");
	if (un == null)
		response.sendRedirect("adminlogin.jsp");
		%>

	<div class="container">
		<h2 style="text-align: center;" >
			Inquiry Details
			</h2>
		<%
			if (mm != null)
			out.println("<h2> " + mm + "</h2>");
		%>
		
		<br>
		<table class="table" border="2px
		">
			<thead class="bg-primary">
				<th style="text-align: center;">First Name</th>
				<th style="text-align: center;">Last Name</th>
				<th style="text-align: center;">Mobile No</th>
				<th style="text-align: center;">Mail Id</th>
				<th style="text-align: center;">Address</th>
				<th style="text-align: center;">Message</th>
						</thead>
			<%
				for (Inquiry ee : li) {
			%>
			<tr>
				<td style="color: white; text-align: center;"><%=ee.getFname()%></td>
				<td style="color: white; text-align: center;"><%=ee.getLname()%></td>
				<td style="color: white; text-align: center;"><%=ee.getMob()%></td>
				<td style="color: white; text-align: center;"><%=ee.getMail()%></td>
				<td style="color: white; text-align: center;"><%=ee.getAddr()%></td>
				<td style="color: white; text-align: center;"><%=ee.getMsg()%></td>
				</tr>
			
			<%
				}
			%>
		</table>
	</div>

</body>
</html>