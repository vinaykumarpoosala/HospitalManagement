<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8"  isELIgnored="false"%>
<head>
    <meta charset="UTF-8">
    <title>HMS</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
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
.dropdown-content a:hover {background-color: #f1f1f1}

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
<header id="home" class="header">
    <nav class="nav" role="navigation">
        <div class="container nav-elements">
            <div class="branding">
            <h2>HMS</h2>
            </div><!-- branding -->
            <ul class="navbar">
                <li><a href="">home</a></li>
                <li><a href="/goToLogin">login</a></li>
                
            </ul><!-- navbar -->
        </div><!-- container nav-elements -->
    </nav>
    <div class="container tagline">
        <h1 class="headline">Our Mission</h1>
        <p>We support and encourage <em>active and healthy</em> lifestyles, by offering <em>ethically sourced</em> and <em>eco-friendly</em> medical treatment</p>
    </div><!-- container tagline -->
</header><!-- #home -->

<p>${message}</p>

<footer class="footer">
    <div class="container">
        <nav class="nav" role="navigation">
            <div class="container nav-elements">
                <div class="branding">
                    <p class="address">Hyderabad  <br>
                        telangana, IN 
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
				market in a similar product category.</p>  </div><!-- container -->
</footer><!-- footer -->

</body>
</html>
