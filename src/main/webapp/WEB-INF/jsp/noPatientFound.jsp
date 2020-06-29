<!DOCTYPE html>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>HPlus</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<%@include file="header.jsp" %>
<section id="error" class="section">
<p class = "error">${error}</p>
<p class = "error">${message}</p>
<% String userType = (String)session.getAttribute("userType"); %>
<input type="hidden" id="user_Type" value="<%= userType %>">

</section>
<footer class="footer">
    <div class="container">
        <nav class="nav" role="navigation">
            <div class="container nav-elements">
                <div class="branding">
                    <p class="address">Hyderbad<br>
                        IN, 500086
                    </p>
                </div>
            </div>
        </nav>
        <p class="legal">HMS is a fictitious brand created by
				crew solely for the purpose of xplore training. All the
				people associated with HMS are also fictitious. Any resemblance
				to real brands, products, or people is purely coincidental.
				Information provided about the product is also fictitious and should
				not be construed to be representative of actual products on the
				market in a similar product category.</p></div><!-- container -->
</footer><!-- footer -->

</body>
</html>