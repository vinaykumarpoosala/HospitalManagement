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

#example tr:nth-child(even){background-color: #f2f2f2;}

#example tr:hover {background-color: #ddd;}

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
<% String userType = (String)session.getAttribute("userType"); %>
<input type="hidden" id="user_Type" value="<%= userType %>">
	<%@include file="header.jsp" %>

<section id="registration" class="section">
		<div class="container tagline" style="background-color: #f2f2f2">
	 <em>Update Patient</em><br/>
	     <label style="color: black;">Patient ID</label> <input id="id_C" name="id_C" type="text" />&nbsp; &nbsp; <button onclick=searchPatientByiD()>Get</button><br/>
	 	
    		 <form method="post" action="/updatepatient" method="post" modelAttribute="newPatient">
    		     		 	<input type="hidden" name="id" value="${patient.id }">
    		 
   <table id="example" class="display" align="center" >
    		 	
    		<tr>
    			<td>Attribute</td>
    			<td>OLD Details</td>
    			<td>New Details</td>
    		</tr>
    			 	
			<tr>
				<td>SSN ID</td>
				<td><input type="text" value="${patient.ssnId}"readonly="readonly" /></td>
				<td><input name="ssnId" type="text"  value="${patient.ssnId}"readonly="readonly"/></td>
			
			</tr>
			
			<tr>
				<td>Name</td>
				<td><input  type="text" value="${patient.name}" readonly="readonly"/></td>
				<td><input name="name" type="text" placeholder="${patient.name}" required="required"/></td>
			
			</tr>
			
			
			<tr>
				<td>Age</td>
				<td><input  type="number" value="${patient.age}" readonly="readonly" /></td>
				<td><input name="age" type="number" placeholder="Enter new age" required="required"/></td>
			
			</tr>
			
			
			<tr>
				<td>Address</td>
				<td><input  type="text" value="${patient.address}" readonly="readonly"/></td>
				<td><input name="address" type="text" placeholder="Enter new Address" required="required" /></td>
			
			</tr>
			
			<tr>
				<td>Date of Admission</td>
				<td><input  type="text" value="${patient.dateoFAdmission}" readonly="readonly"/></td>
				<td><input name="dateoFAdmission" type="date"  required="required"/></td>
			
			</tr>
    		 
    		 <tr>
				<td>Type Of bed</td>
				<td><input type="text" name="bed" value="${patient.typeOfBed}" readonly="readonly"/></td>
				<td><select name="typeOfBed" required="required"><option value="single">single</option>
    			<option value="shared">shared</option></select></td>
			
			</tr>
			
			<tr>
				<td>State</td>
				<td><input type="text" name="state" value="${patient.state}" readonly="readonly"/></td>
				<td><select
						onchange="print_city('state', this.selectedIndex);" name="state"
						id="sts" name="stt" class="form-control" required
						style="margin: auto;">
				</select></td>
			
			</tr>
			
			<tr>
				<td>City</td>
				<td><input type="text" value="${patient.city }" readonly="readonly"/></td>
				<td><select id="state" class="form-control"
						name="city" required>
				</select></td>
			
			</tr>
    		 	
    		 	<tr>
    		 	<td><input type="submit" value="Update" id="submit"></td>
    		 	</tr>
    		 	
    		</table> 	
    		 	
    		 	
    		 	
    			    			
    		</form>
		</div>
		<span>${error}</span>
	</section>
	<%@ include file="footer.jsp" %>
</body>	
	<script type="text/javascript">
function searchPatientByiD()
{
	 	var selectedPatient = document.getElementById('id_C').value;
	    var redirectLink ="/goToUpdate/searchById?patientId=" + selectedPatient;
	    console.log('Redirecting to: ' + redirectLink);
	    window.location.href = redirectLink;
}
	</script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/cities.js"></script>
<script language="javascript">
	print_state("sts");
</script>	
</html>
	