<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

</head>
<body>
	<%@include file="header.jsp" %>

<div>
<input type="hidden" id="userType" value="${userType}">

<section id="registration" class="section">
	 <div class="container tagline">
	 <em>Delete Patient</em><br/>
	     			<label>Patient ID</label> <input id="id_C" name="id_C" type="text" />&nbsp; &nbsp; <button onclick=searchPatientByiD()>Check</button><br/>
	 	
    		 <form method="post" action="/deletepatient" method="post" >
    		 	<input type="hidden" name="id" value="${patient.id }">
    			<label>SSN ID</label> <input name="ssnId" type="text"  value="${patient.ssnId}"readonly="readonly"/>
    			<label>Name</label> <input name="name" type="text" value="${patient.name}" readonly="readonly"/><br/>
    			<label>Age</label> <input name="age" type="number" value="${patient.age}"readonly="readonly" /><br/>
    			<label>Address</label> <input name="address" type="text" value="${patient.address}"readonly="readonly"/><br/>
    			
    			<label>Date of Admission</label>
    			<input name="dateoFAdmission" type="text" value="${patient.dateoFAdmission}" readonly="readonly"/><br/>
    			<label>Bed Type</label>
    			    			<br/>
    			
    			<input type="text" name="typeOfBed" value="${patient.typeOfBed}" readonly="readonly">
    			    			<br/>
    			
    			
    			<label>State</label>
    			<input type="text" name="state" value="${patient.state}" readonly="readonly">
				<br/>
				<label>City</label>
				<input type="text" name="city" value="${patient.city}" readonly="readonly">

    			<span>${error}</span>
				
    			<br/>
    			<input type="submit" value="Delete" id="submit">
    		</form>
		</div>
	</section>
	</div>
<% String userType = (String)session.getAttribute("userType"); %>
<input type="hidden" id="user_Type" value="<%= userType %>">	
</body>	
	<script type="text/javascript">
function searchPatientByiD()
{
	 	var selectedPatient = document.getElementById('id_C').value;
	    var redirectLink ="/goToDelete/searchById?patientId=" + selectedPatient;
	    console.log('Redirecting to: ' + redirectLink);
	    window.location.href = redirectLink;
}
	</script>
</html>
	