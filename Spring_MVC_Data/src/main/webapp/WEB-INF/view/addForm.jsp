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
	<jsp:include page="_navadd.jsp" /> 
	<%-- <header class="navbar navbar-expand-md navbar-dark bg-light">

		<!-- barre de navigation -->

		<div
			class="container-fluid justify-content-center justify-content-md-between">
			<div class="d-flex my-2 my-sm-0">
				<ul class="navbar-nav">
					<li><a href="listemp">Retour</a> &nbsp;</li>
				</ul>

			</div>
			<div
				class="container-fluid justify-content-center justify-content-md-between">
				<div class="d-flex my-2 my-sm-0">
					<ul class="navbar-nav">
						<li class="nav-item me-3 me-lg-0"><c:if
								test="${pageContext.request.userPrincipal.name != null}">
								<sec:authorize access="hasRole('ADMIN')">
     &nbsp;
     <a href="listemp">Liste Employée</a>


									<form:form action="save" method="post"
										modelAttribute="employee">
										<a
											href="${pageContext.request.contextPath }/addemp?mylocale=en">EN</a>

										<a
											href="${pageContext.request.contextPath }/addemp?mylocale=fr">FR</a>
									</form:form>
								</sec:authorize>

								<ul class="navbar-nav flex-row">
									<li class="nav-item me-3 me-lg-0">&nbsp; <a href="logout">Logout</a>
									</li>
							</c:if>
					</ul>
				</div>
			</div>
		</div>

	</header> --%>
	<!-- Formulaire -->

	<div class="container mt-3 ">
		<div class="card">
			<div class="card-body">


				<h2>
					<spring:message code="addemployee.label"></spring:message>
				</h2>
				<br>
				<form:form action="save" method="post" modelAttribute="employee">

					<div class="row">
						<div class="col-md-6 mb-4">
							<div class="form-outline">

								<td><spring:message code="firstName.label" /></td>
								<form:input type="text" name="firstName" path="firstName"
									class="form-control" />

								<form:errors path="firstName" cssClass="error" />
								<label class="form-label"></label>
							</div>
						</div>

						<div class="col-md-6 mb-4">
							<div class="form-outline">

								<td><spring:message code="LastName.label" /></td>

								<form:input type="text" name="lastName" path="lastName"
									class="form-control" required="required" />

								<form:errors path="lastName" cssClass="error" />
								<label class="form-label"></label>
							</div>
						</div>
					</div>
					<!-- title input -->
					<div class="form-outline mb-4">
						<td><spring:message code="title.label" /></td>
						<form:input type="text" name="title" path="title"
							class="form-control" required="required" />
						<form:errors path="title" cssClass="error" />
						<label class="form-label"></label>
					</div>
					<!-- startdate input -->


					<div class="form-outline mb-4">
						<td><spring:message code="startDate.label" /></td> <input
							type="date" name="startDate" class="form-control"
							required="required" /> <label class="form-label"> </label>
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