<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
<script
	src="https://unpkg.com/bootstrap-table@1.21.2/dist/bootstrap-table.min.js"></script>

<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.21.2/dist/bootstrap-table.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>

<title>Employee</title>
</head>
<body>
	<%-- <jsp:include page="_menu.jsp" /> --%>
	<jsp:include page="_navList.jsp" />
	<div class="container">

		<h3 class="text-center">
			<spring:message code="listemp.label"></spring:message>
		</h3>

		<hr>
		<br>
		<div class="row d-flex justify-content-center text-center">
			<div class="col">

				<h5>
					<a href="addemp"><spring:message code="addemp.label"></spring:message></a>
				</h5>
				<table
					class="table table-bordered table-striped  justify-content-center"
					data-toggle="table" data-pagination="true" data-search="true"
					id="table">
					<tr>
						<th>ID</th>
						<th><spring:message code="firstName.label"></spring:message></th>
						<th><spring:message code="LastName.label"></spring:message></th>
						<th><spring:message code="title.label"></spring:message></th>
						<th><spring:message code="startDate.label"></spring:message></th>
						<th>Action</th>
					</tr>
					<c:forEach items="${employeelist}" var="employee">
						<tr>
							<td>${employee.empId}</td>
							<td>${employee.firstName}</td>
							<td>${employee.lastName}</td>
							<td>${employee.title}</td>
							<td>${employee.startDate}</td>
							<td>
								<%--  <a class="btn btn-primary" href="/edit?id=${employee.empId}">Edit</a>
                &nbsp;&nbsp;&nbsp;
                <a class="btn btn-danger " onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet élément ?');" href="/delete?id=${employee.empId}">Delete</a> --%>

								<a class="btn btn-primary"
								href="editemp?empId=<c:out value='${employee.empId}' />"><spring:message code="edit.label"></spring:message></a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a class="btn btn-danger "
								onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet élément ?');"
								href="delete?id=<c:out value='${employee.empId}' />"><spring:message code="delete.label"></spring:message></a>

							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	</div>
</body>
</html>