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
<header id="home" class="header">
    <nav class="nav" role="navigation">
        <div class="container nav-elements">
            <div class="branding">
            </div><!-- branding -->
            <ul class="navbar">
                <li><a href="/home">home</a></li>
               
            </ul><!-- navbar -->
        </div><!-- container nav-elements -->
    </nav>
    <div class="container tagline">
        <h1 class="headline">Our Mission</h1>
        <p>We support and encourage <em>active and healthy</em> lifestyles, by offering <em>ethically sourced</em> and <em>eco-friendly</em> nutritional products for the <em>performance-driven</em> athlete.</p>
    </div><!-- container tagline -->
</header><!-- #home -->
<section id="error" class="section">
<p class = "error">${error}</p>
<p class = "error">${message}</p>

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
        <p class="legal">HMS  is a fictitious brand created by a crue of case study solely for the purpose of training. All products and people associated with H+ Sport are also fictitious. Any resemblance to real brands, products, or people is purely coincidental. Information provided about the product is also fictitious and should not be construed to be representative of actual products on the market in a similar product category.</p>
    </div><!-- container -->
</footer><!-- footer -->

</body>
</html>