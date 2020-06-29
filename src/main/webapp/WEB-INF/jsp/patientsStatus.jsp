<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>

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
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">

</head>
<body>
	<link rel="stylesheet"
		href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">

	<%@ include file="header.jsp"%>
		

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



		<c:forEach var="patient" items="${patients}">
			<tr>
				<td>${patient.id}</td>
				<td>${patient.name}</td>
				<td>${patient.ssnId}</td>
				<td>${patient.age}</td>
				<td>${patient.dateoFAdmission}</td>
				<td>${patient.address}</td>
			</tr>
		</c:forEach>
	</table>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>


	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').DataTable({
				"pagingType" : "full_numbers"
			});
		});
	</script>




	<%
		String userType = (String) session.getAttribute("userType");
	%>
	<input type="hidden" id="user_Type" value="<%=userType%>">

<%@include file="footer.jsp" %>
</body>

</html>