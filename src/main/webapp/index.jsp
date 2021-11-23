<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>CRM System</title>
	
	<!-- Bootstrap core CSS -->
	<link
		href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css"
		rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link
		href="${pageContext.request.contextPath}/resources/css/scrolling-nav.css"
		rel="stylesheet">
</head>

<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Customer
				Relationship Management</a>
			<button onclick="location.href = 'customer/list';" id="myButton"
				class="float-left submit-button">Login</button>
		</div>
	</nav>


	<header class="bg-primary text-white">
		<div class="container text-center">
			<h1>Welcome to The CRM System</h1>
			<p class="lead">An approach to manage a company's interaction
				with employees and customers.</p>
		</div>
	</header>

	<section id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<h2>About this Web Application</h2>
					<p class="lead">This is a database driven web application. This
						system performs basic CRUD operations to:</p>
					<ul>
						<li>Secure customer accounts</li>
						<li>Retrieve and manipulate customer information based on
							roles</li>
						<li>Manage the external interactions and relationships that
							drive success</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Simple CRM</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom JavaScript for this theme -->
	<script
		src="${pageContext.request.contextPath}/resources/js/scrolling-nav.js"></script>

</body>

</html>