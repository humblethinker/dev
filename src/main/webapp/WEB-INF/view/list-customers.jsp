<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>

<head>
	<title>List Customers</title>
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	
	<!-- reference our style sheet -->
	<link
		href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<link type="text/css" rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css" />
	
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	
	<script type="text/javascript">
			$(function () {
		
		        var chkId = '';
		        $('.chkNumber:checked').each(function () {
		            chkId += $(this).val() + ",";
		        });
		        chkId = chkId.slice(0, -1);
		
		       $('.chkSelectAll').change(function () {
		            $('.chkNumber').prop('checked', this.checked);
		        });
		
		 		$('.chkNumber').change(function() { $('.chkSelectAll')
		 			.prop('checked',$('.chkNumber:checked')
		 					.length == $('.chkNumber').length);
		 		});
		    });
	</script>
</head>

<body>

	<div class="container">
		<div class="content">
			<div id="wrapper">
				<div id="header">
					<h2>CRM - Customer Relationship Manager</h2>
				</div>
			</div>

			<p>
				User:
				<security:authentication property="principal.username" />
				, Role(s):
				<security:authentication property="principal.authorities" />
			</p>

			<security:authorize access="hasAnyRole('MANAGER', 'ADMIN')">

				<!-- put new button: Add Customer -->

				<input type="button" value="Add Customer"
					onclick="window.location.href='showFormForAdd'; return false;"
					class="add-button" />

			</security:authorize>

			<!--  add a search box -->
			<form:form action="search" method="POST">
                Search customer: <input type="text"
					name="theCustomerName" />
				<input type="submit" value="Search" class="add-button" />
			</form:form>

			<!--  add our html table here -->

			<form:form action="deleteSelected" method="POST">
				<table>
					<tr>
						<security:authorize access="hasAnyRole('ADMIN')">
							<th><input type="checkbox" class="chkSelectAll" /></th>
						</security:authorize>

						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Phone Number</th>

						<%-- Only show "Action" column for managers or admin --%>
						<security:authorize access="hasAnyRole('MANAGER', 'ADMIN')">

							<th>Action</th>

						</security:authorize>

					</tr>

					<!-- loop over and print our customers -->
					<c:forEach var="tempCustomer" items="${customers}">

						<!-- construct an "update" link with customer id -->
						<c:url var="updateLink" value="/customer/showFormForUpdate">
							<c:param name="customerId" value="${tempCustomer.id}" />
						</c:url>

						<!-- construct an "delete" link with customer id -->
						<c:url var="deleteLink" value="/customer/delete">
							<c:param name="customerId" value="${tempCustomer.id}" />
						</c:url>

						<tr>
							<security:authorize access="hasAnyRole('ADMIN')">
								<td><input type="checkbox" class="chkNumber"
									value="${tempCustomer.id}" name="customerId" /></td>
							</security:authorize>

							<td>${tempCustomer.firstName}</td>
							<td>${tempCustomer.lastName}</td>
							<td>${tempCustomer.email}</td>
							<td>${tempCustomer.phoneNumber}</td>

							<security:authorize access="hasAnyRole('MANAGER', 'ADMIN')">

								<td><security:authorize
										access="hasAnyRole('MANAGER', 'ADMIN')">

										<!-- display the update link -->
										<a class='btn btn-info btn-xs' href="${updateLink}"><span
											class="glyphicon glyphicon-edit"></span>Update</a>

									</security:authorize> <security:authorize access="hasAnyRole('ADMIN')">

										<!-- display the delete link -->
										<a class="btn btn-danger btn-xs" href="${deleteLink}"
											onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false"><span
											class="glyphicon glyphicon-remove"></span>Delete</a>

									</security:authorize></td>

							</security:authorize>

						</tr>

					</c:forEach>

				</table>
				<br />
				<security:authorize access="hasAnyRole('ADMIN')">
					<input type="submit" class="add-button" value="Delete Selected"
						onclick="return confirm('Are you sure?')" />
				</security:authorize>
			</form:form>

			<!-- Add a logout button -->
			<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">
				<input type="submit" value="Logout" class="add-button" />
			</form:form>
		</div>
	</div>
</body>

</html>









