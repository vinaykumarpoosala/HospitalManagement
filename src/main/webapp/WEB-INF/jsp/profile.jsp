<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%@page isELIgnored="false" %>
<head>
</head>

<body>
<%@ include file="header.jsp" %>
<h1 align="center"> welcome ${userType }</h1>
<% String userType = (String)session.getAttribute("userType"); %>
<input type="hidden" id="user_Type" value="<%= userType %>">
	<div>
	<h3 align="center">${message}</h3>
	</div>
<%@ include file="footer.jsp" %>

</body>
</html>