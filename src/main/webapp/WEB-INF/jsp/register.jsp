<!DOCTYPE html>
<%@page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<style>
#example {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#example td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#example tr:nth-child(even) {
	background-color: #f2f2f2;
}

#example tr:hover {
	background-color: #ddd;
}

#example th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>


<meta charset="UTF-8">
<title>HMS</title>
<link rel="stylesheet" href="/css/style.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<%
		String userType = (String) session.getAttribute("userType");
	%>
	<input type="hidden" id="user_Type" value="<%=userType%>">
	<%@include file="header.jsp"%>







	<section id="registration" class="section">
		<div class="container tagline" style="background-color: #f2f2f2">
			<em>Register User</em><br />
			<form method="post" action="/registeruser"
				modelAttribute="newPatient">
				<table id="example" class="display" align="center">

					<tr>
						<td>Attribute</td>
						<td>Enter Details</td>

					</tr>

					<tr>
						<td>SSN ID</td>
						<td><input name="ssnId" type="text" placeholder="Enter ssnId"
							required="required" /></td>

					</tr>

					<tr>
						<td>Name</td>
						<td><input name="name" type="text" placeholder="Enter name"
							required="required" /></td>

					</tr>


					<tr>
						<td>Age</td>
						<td><input name="age" type="number" placeholder="Enter  age"
							required="required" /></td>

					</tr>


					<tr>
						<td>Address</td>
						<td><input name="address" type="text"
							placeholder="Enter  Address" required="required" /></td>

					</tr>

					<tr>
						<td>Date of Admission</td>
						<td><input name="dateoFAdmission" type="date"
							required="required" /></td>

					</tr>

					<tr>
						<td>Type Of bed</td>
						<td><select name="typeOfBed" required="required"><option
									value="single">single</option>
								<option value="shared">shared</option></select></td>

					</tr>

					<tr>
						<td>State</td>
						<td><select
							onchange="print_city('state', this.selectedIndex);" name="state"
							id="sts" name="stt" class="form-control" required
							style="margin: auto;">
						</select></td>

					</tr>

					<tr>
						<td>City</td>
						<td><select id="state" class="form-control" name="city"
							required>
						</select></td>

					</tr>



					<br />
					<tr>
						<td><input type="submit" value="Submit" id="submit"></td>
						<td><span>${error}</span></td>
					</tr>
				</table>
			</form>
		</div>
	</section>
	<footer class="footer">
		<div class="container">
			<nav class="nav" role="navigation">
				<div class="container nav-elements">
					<div class="branding">
						<p class="address">
							Hyderabad <br> IN, 500086
						</p>
					</div>
				</div>
			</nav>
			<p class="legal">HMS is a fictitious brand created by crew solely
				for the purpose of xplore training. All the people associated with
				HMS are also fictitious. Any resemblance to real brands, products,
				or people is purely coincidental. Information provided about the
				product is also fictitious and should not be construed to be
				representative of actual products on the market in a similar product
				category.</p>
		</div>
		<!-- container -->
	</footer>
	<!-- footer -->




</body>
<script type="text/javascript" src="js/cities.js"></script>
<script language="javascript">
	print_state("sts");
</script>
</html>