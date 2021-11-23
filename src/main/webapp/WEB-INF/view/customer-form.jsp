<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Save Customer</title>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	
	<link type="text/css" rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/save-customer.css" />
	
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/sign-up-form.js"></script>
	
	
	<!-- Reference Bootstrap files -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<style>
		.error {
			color: red
		}
	</style>
</head>

<body>

	<div class="container" style="margin-top: 1em;">

		<form:form action="saveCustomer" modelAttribute="customer"
			method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />

			<!-- Sign up card -->
			<div class="card person-card">
				<div class="card-body">
					<!-- Sex image -->
					<img id="img_sex" class="person-img"
						src="https://visualpharm.com/assets/217/Life%20Cycle-595b40b75ba036ed117d9ef0.svg">
					<h2 id="who_message" class="card-title">Update Customer Information</h2>

					<!-- First row (on medium screen) -->
					<div class="row">
						<div class="form-group">
							<label for="first_name" class="col-form-label">First Name</label>

							<form:input path="firstName" placeholder="first name"
								class="form-control" />
							<form:errors path="firstName" cssClass="error" />

						</div>

						<div class="form-group">
							<label for="last_name" class="col-form-label">Last Name</label>
							<form:input path="lastName" placeholder="last name"
								class="form-control" />
							<form:errors path="lastName" cssClass="error" />
						</div>

						<div class="form-group">
							<label for="email" class="col-form-label">Email</label>
							<form:input path="email" placeholder="example@gmail.com"
								class="form-control" />
							<form:errors path="email" cssClass="error" />
						</div>

						<div class="form-group">
							<label for="tel" class="col-form-label">Phone Number</label>
							<form:input path="phoneNumber" placeholder="999-999-9999"
								class="form-control" />
							<form:errors path="phoneNumber" cssClass="error" />
						</div>

					</div>
				</div>
			</div>

			<div class="buttonHolder">
				<button type="submit" class="btn btn-primary">Save</button>
				<input type="button" value="Back" class="btn btn-primary"
					onclick="location.href='${pageContext.request.contextPath}/customer/list';" />
			</div>
		</form:form>

		<div style=""></div>
	</div>

</body>

</html>
