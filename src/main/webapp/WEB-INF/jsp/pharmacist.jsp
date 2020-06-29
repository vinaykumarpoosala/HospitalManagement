<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
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
</head>
<body>
	<%
		String userType = (String) session.getAttribute("userType");
	%>
	<input type="hidden" id="user_Type" value="<%=userType%>">

	<%@ include file="header.jsp"%>
	<h2 align="center">Medicine issued</h2>

	<table id="example" class="display" align="center">
		<thead>
			<tr>
				<th class="label">medicine name</th>
				<th class="label">medicine quantity</th>
				<th class="label">medicine rate</th>
				<th class="label">medicine amount</th>

			</tr>
		</thead>
		<c:forEach var="par" items="${patient.medicines}">
			<tr>

				<td>${par.name}</td>
				<td><c:out value="${par.quantity}" /></td>
				<td><c:out value="${par.rate}" /></td>
				<td><c:out value="${par.amount}" /></td>
			</tr>
		</c:forEach>
	</table>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').DataTable({
				"pagingType" : "full_numbers"
			});
		});
	</script>

	<br>
	<br>
	<h2 align="center">Patient details</h2>
	<table id="example" class="display" align="center">
		<thead>
			<tr>
				<th class="label">Patient Id</th>
				<th class="label">Patient Name</th>
				<th class="label">Patient SSN Id</th>
				<th class="label">Patient age</th>
				<th class="label">Patient admissionDtae</th>
				<th class="label">Address</th>
			</tr>
		</thead>
		<tr>
			<td>${patient.id}</td>
			<td>${patient.name}</td>
			<td>${patient.ssnId}</td>
			<td>${patient.age}</td>
			<td>${patient.dateoFAdmission}</td>
			<td>${patient.address}</td>
		</tr>
	</table>
	<br />







	<form action="/addMedicine" method="post">
		<input type="hidden" value='${patient.id }' name="patientId">
		<br>
		<br>
		<h2 align="center">Add new Medicine</h2>
		<table id="example" class="display" align="center">
			<tr>
				<td>medicine name</td>
				<td>quantity</td>
				<td>rate</td>
				<td>amount</td>
			</tr>
			<tr>
				<td><input type="text" name="name" required="required"/></td>
				<td><input type="number" name='quantity' id='q' onchange="insertAmount()" required="required" /></td>
				<td><input type="number" name='rate' id='r'
					onchange="insertAmount()" required="required"/></td>
				<td><input type="number" name='amount' id='am' required="required" /></td>
			</tr>
			<tr>
				<td align="left"><input type="submit" value="confirm"></td>
			</tr>
		</table>


		<!-- <button type="button" onclick="myFunction()">add medicine</button> -->





	</form>


	<%@include file="footer.jsp"%>
</body>

<script type="text/javascript">
function insertAmount()
{
var c = document.getElementById('q').value;
console.log(c);
var r = document.getElementById('r').value;
console.log(Number(c)*Number(r));

document.getElementById('am').setAttribute('value',Number(c)*Number(r));
}</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>


</html>