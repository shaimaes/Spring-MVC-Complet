<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	
<title>Ajouter un employé</title>
</head>
<body>
	    <!-- Formulaire -->
   
	 <div class="container mt-3 ">
        <div class="card">
        <div class="card-body">
		
		<form action="save" method="post">
		
			<div class="form-group">
				<label for="firstName">First Name</label> 
				<input type="text"	class="form-control" name="firstName" placeholder="Entrez votre prénom" required>
			</div>
			<div class="form-group">
				<label for="lastName">Last Name</label> 
				<input type="text"	class="form-control" name="lastName"  placeholder="Entrez votre nom" required>
			</div>
			
			<div class="form-group">
				<label for="startDate">Date de création (yyyy-mm-dd)</label> 
				<input type="text" class="form-control" name="startDate"  placeholder="Entrez la date de création" required>
			</div>
			<div class="form-group">
				<label for="title">Titre</label> 
				<input type="text" class="form-control" name="title" placeholder="Entrez votre titre" required>
			</div>
			<button type="submit" class="btn btn-primary">Ajouter</button>
			
		</form>
</div>
</div>
	</div>
</body>
</html>