<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>HMS</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<% String userType = (String)session.getAttribute("userType"); %>
<input type="hidden" id="user_Type" value="<%= userType %>">
<%@ include file="header.jsp" %>
	
	<!-- #home -->

	<section id="search" class="section">
		<header class="imageheader"></header>
		<div class="container">
			<h2 class="headline">Search patient</h2>
			<form action="/search" method="get">
				<label class="card-title">Search patient</label>
				 <input id="search" name="patientId" placeholder="enter id">
			    <input type="submit" value="Search">
			</form>
		</div>
	</section>


	<%@ include file="footer.jsp" %>



</body>
</html>