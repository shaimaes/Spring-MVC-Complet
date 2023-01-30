<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Employee</title>
</head>
<body>
	<div align="center">
		<h2>New Customer</h2>
		<form:form action="save" method="post" modelAttribute="employee">
			<table >
				<tr>
					<td>FirstName:</td>
					<td><form:input path="firstname" /></td>
				</tr>

				<tr>
					<td>LastName:</td>
					<td><form:input path="lastname" /></td>
				</tr>

				<tr>
					<td>Title:</td>
					<td><form:input path="Title" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save"></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>