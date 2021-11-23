<!DOCTYPE html>
<html>

<head>
	<title>Registration Confirmation</title>
	
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css">
	<script
		src="https://bootstrapcreative.com/wp-bc/wp-content/themes/wp-bootstrap/codepen/bootstrapcreative.js?v=1"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js"></script>
</head>

<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="jumbotron text-xs-center">
		<h1 class="display-3">Thank You!</h1>
		<p class="lead">
			<strong>User registered successfully!</strong>
		</p>
		<hr>

		<p class="lead">
			<a class="btn btn-primary btn-sm"
				href="${pageContext.request.contextPath}/" role="button">Continue
				to Home Page</a> <a class="btn btn-primary btn-sm"
				href="${pageContext.request.contextPath}/showMyLoginPage"
				role="button">Login with new user</a>
		</p>
	</div>
</body>

</html>