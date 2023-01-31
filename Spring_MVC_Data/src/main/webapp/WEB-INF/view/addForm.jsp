<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<title>Ajouter un employé</title>
</head>
<body>
<jsp:include page="_menu.jsp" />
	<!-- Formulaire -->

	<div class="container mt-3 ">
		<div class="card">
			<div class="card-body">

				<h2>Ajouter un Employé</h2>
				<br>
				<form:form action="save" method="post" modelAttribute="employee">

					<div class="row">
						<div class="col-md-6 mb-4">
							<div class="form-outline">
							
								<td><spring:message code="firstName.label"/></td>
								<form:input type="text" name="firstName" path="firstName"
									class="form-control"  />
									
								<form:errors path="firstName" cssClass="error" />
								<label class="form-label"></label>
							</div>
						</div>
						
						<div class="col-md-6 mb-4">
							<div class="form-outline">
							
							<td><spring:message code="LastName.label"/></td>
							
								<form:input type="text" name="lastName" path="lastName"
									class="form-control"  />
									
								<form:errors path="lastName" cssClass="error" />
								<label class="form-label"></label>
							</div>
						</div>
					</div>
					<!-- title input -->
					<div class="form-outline mb-4">
					<td><spring:message code="title.label"/></td>
						<form:input type="text" name="title" path="title"
							class="form-control" />
						<form:errors path="title" cssClass="error" />
						<label class="form-label" ></label>
					</div>
					<!-- startdate input -->


					<div class="form-outline mb-4">
					<td><spring:message code="startDate.label"/></td>
						<input type="text" name="startDate"
							class="form-control" />
						<label class="form-label" > </label>
						<form:errors path="startDate" cssClass="error" />
					</div>


					<!-- Submit button -->
					<button type="submit" class="btn btn-primary btn-block ">Ajouter</button>
			</div>
			</form:form>
		</div>
	</div>

</body>
</html>