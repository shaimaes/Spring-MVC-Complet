<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<title>Edit Form</title>
</head>
<body>
<div class="container mt-3 ">
		<div class="card">
			<div class="card-body">

				<h2>Modifier l'Employee n°${emp.empId}</h2>
				<form action="editemp" method="post" modelAttribute="employee">
<hr>
		<br>
		

			<div class="form-group">
				<label for="firstName">First Name</label> <input type="text"
					class="form-control" name="firstName"
					placeholder="Entrez votre prénom" value="${employee.firstName}">
			</div>
			<div class="form-group">
				<label for="lastName">Last Name</label> <input type="text"
					class="form-control" name="lastName" placeholder="Entrez votre nom"
					value="${employee.lastName}">
			</div>

			<div class="form-group">
				<label for="startDate">Date de création</label> <input type="text"
					class="form-control" name="startDate"
					placeholder="Entrez la date de création" value="${employee.startDate}">
			</div>
			<div class="form-group">
				<label for="title">Titre</label> <input type="text"
					class="form-control" name="title" placeholder="Entrez votre titre"
					value="${employee.title}">
			</div>
			<input type="hidden" name="empId" value="${employee.empId }">

			<button type="submit" class="btn btn-primary">Editer</button>
			<br></br>


		</form>
	</div>
</div>
</div>

</body>
</html>