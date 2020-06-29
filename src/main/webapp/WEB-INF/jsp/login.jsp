<!DOCTYPE html>
<%@page isELIgnored="false" %>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<meta charset="ISO-8859-1">
<title>HMS</title>
</head>
<body>
	<header id="home" class="header">
		<nav class="nav" role="navigation">
			<div class="container nav-elements">
				
				<!-- branding -->
				<ul class="navbar">
					<li><a href="/home">home</a></li>
					
				</ul>
				<!-- navbar -->
			</div>
			<!-- container nav-elements -->
		</nav>
		<!-- <div class="container tagline">
    <h1 class="headline">Our Mission</h1>
    <p>We support and encourage <em>active and healthy</em> lifestyles, by offering <em>ethically sourced</em> and <em>eco-friendly</em> nutritional products for the <em>performance-driven</em> athlete.</p>
  </div>container tagline -->
	</header>
	<!-- #home -->
    <span class="success">${dataSaved}</span>
   	<section id="login" class="section">
		<div class="container tagline">
			<em>LOGIN USER</em>
			<form action="/login" method="post" modelAttribute="login">
				<label>Username</label> <input type="text" name="username"/><br />
			    <label>Password</label> <input type="password" name="password"/><br />
			     <input type="submit" value="Login">
			</form>
			<span> ${message}</span>
		</div>
	</section>
	<!-- #products -->


	<footer class="footer">
		<div class="container">

			<nav class="nav" role="navigation">
				<div class="container nav-elements">
					<div class="branding">
						
						<p class="address">
							Hyderbad<br> Telangana, IN 500086
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
				market in a similar product category..</p>
		</div>
		<!-- container -->
	</footer>
	<!-- footer -->

</body>
</html>