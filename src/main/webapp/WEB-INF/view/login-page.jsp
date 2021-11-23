<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<title>Login Page</title>
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Reference Bootstrap files -->
	<link
		href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	
	<link type="text/css" rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/login.css" />
	
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/login.js"></script>
</head>

<body>

	<div class="container">
		<div class="row" style="margin-top: 20px">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form:form
					action="${pageContext.request.contextPath}/authenticateTheUser"
					method="POST">
					<fieldset>
						<div class="form-group">
							<div class="col-xs-15">
								<div>
									<!-- Check for login error -->
									<c:if test="${param.error != null}">
										<div class="alert alert-danger col-xs-offset-1 col-xs-10">
											Invalid username and password.</div>
									</c:if>

									<!-- Check for logout -->
									<c:if test="${param.logout != null}">
										<div class="alert alert-success col-xs-offset-1 col-xs-10">
											You have been logged out.</div>
									</c:if>
								</div>
							</div>
						</div>

						<h2>Please Sign In</h2>
						<hr class="colorgraph">
						<div class="form-group">
							<input type="username" name="username" id="username"
								class="form-control input-lg" placeholder="Username">
						</div>
						<div class="form-group">
							<input type="password" name="password" id="password"
								class="form-control input-lg" placeholder="Password">
						</div>
						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6">
								<input type="submit" class="btn btn-lg btn-success btn-block"
									value="Sign In">
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6">
								<a
									href="${pageContext.request.contextPath}/register/showRegistrationForm"
									class="btn btn-lg btn-primary btn-block">Register</a>
							</div>
						</div>
					</fieldset>
				</form:form>
			</div>
		</div>

	</div>

</body>
</html>