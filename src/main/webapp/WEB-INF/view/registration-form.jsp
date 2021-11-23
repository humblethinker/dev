<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<title>Registration Form</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
	
	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	
	<!-- Website CSS style -->
	<link type="text/css" rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/registration.css">
	
	<!-- Website Font style -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	
	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Passion+One'
		rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Oxygen'
		rel='stylesheet' type='text/css'>
	
	
</head>
<body>
	<div class="container">
		<div class="row main">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<h1 class="title">Sign Up</h1>
					<hr />
				</div>
			</div>
			<div class="main-login main-center">

				<form:form
					action="${pageContext.request.contextPath}/register/processRegistrationForm"
					modelAttribute="crmUser" class="form-horizontal">

					<div class="form-group">
						<label for="userName" class="cols-sm-2 control-label">Username</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-users fa"
									aria-hidden="true"></i></span>

								<form:input path="userName" placeholder="Enter your Username"
									class="form-control" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
									type="password" class="form-control" name="password"
									id="password" placeholder="Enter your Password" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="name" class="cols-sm-2 control-label">Role</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span>
								<form:select path="formRole" items="${roles}"
									class="form-control" />
							</div>
						</div>
					</div>


					<div class="form-group ">
						<button type="submit"
							class="btn btn-primary btn-lg btn-block login-button">Register</button>
					</div>

					<div class="login-register">
						<a href="${pageContext.request.contextPath}/showMyLoginPage">Login</a>
					</div>

				</form:form>
			</div>
		</div>
	</div>
</body>

</html>