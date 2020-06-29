<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<head>
<meta charset="UTF-8">
<title>HMS</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* Style The Dropdown Button */
.dropbtn {
	background-color: transparent;
	color: white;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
	position: relative;
	display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: transparent;
	min-width: 160px;
}

/* Links inside the dropdown */

/* Change color of dropdown links on hover */
.dropdown-content a:hover {
	background-color: #f1f1f1
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
	display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
</style>
</head>
<body>
	<header id="home" class="header" style="height: 160px;">
		<nav class="nav" role="navigation">
			<div class="container nav-elements">
				<div class="branding">
					<h2>HMS</h2>
				</div>
				<!-- branding -->
				<ul class="navbar">
					<li id="cb"><a href="/patientsStatus">Patients Status</a></li>
					<li id="fb"><a href="/goToSearch">final billing</a></li>
					<li><a href="/goToSearch">Search patient</a></li>
					<li><div class="dropdown" id="pc">
							<button class="dropbtn">Patients</button>
							<div class="dropdown-content">
								<a href="/goToRegistration">Register Patient</a> <a
									href="/goToUpdate">Update</a> <a href="/goToDelete">Delete</a>

							</div>
						</div></li>

					<li><div class="dropdown" id="uc">
							<button class="dropbtn">Pharmacy</button>
							<div class="dropdown-content">
								<a href="/goToSearch">Search patient</a> <a href="/goToSearch">Add
									medicine</a>
							</div>
						</div></li>

					<li><div class="dropdown" id="dc">
							<button class="dropbtn">Diagnostics</button>
							<div class="dropdown-content">
								<a href="/goToSearch">Add Diagnostics</a>

							</div>
						</div></li>

					<li><a href="/Logout">logout</a></li>
				</ul>
				<!-- navbar -->
			</div>
			<!-- container nav-elements -->
		</nav>
		<!-- container tagline -->
	</header>
	<!-- #home -->



	<script>
	document.onreadystatechange = function () {
		     console.log(document.getElementById("user_Type").value)
		  if (document.readyState === 'complete') {
			  if(document.getElementById("user_Type").value==="executive"){
                  document.getElementById("uc").style.visibility = "hidden"
                	  document.getElementById("dc").style.visibility = "hidden"
                		  
                				  
                			  
     }
		  }
		     if (document.readyState === 'complete') {
				  if(document.getElementById("user_Type").value==="pharmacist"){
	                  document.getElementById("pc").style.visibility = "hidden"
		                  document.getElementById("dc").style.visibility = "hidden"
			                  document.getElementById("fb").style.visibility = "hidden"
				                  
			                  
	                	  
	     }
			  }

		     if (document.readyState === 'complete') {
				  if(document.getElementById("user_Type").value==="diagnostic"){
	                  document.getElementById("uc").style.visibility = "hidden"
		                  document.getElementById("pc").style.visibility = "hidden"
			                  document.getElementById("fb").style.visibility = "hidden"
				                  
			                  
	                	  
	     }
			  }
		}
	                       
                 
                 
                 function destry(){
                	 sessionStorage.removeItem("userType");
                 }
                 
	    
	</script>

</body>

</html>
