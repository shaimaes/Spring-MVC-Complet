<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8" session="false"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Fonts -->
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">

<link rel="stylesheet" href="css/style.css">

<link rel="icon" href="Favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>


<title>Login</title>
<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/loginStyle.css">

</head>

<%-- <body>
	<jsp:include page="_menu.jsp" />

	<h1>
		<s:message code="login.label"></s:message>
	</h1>


	<!-- /login?error=true -->
	<c:if test="${param.error == 'true'}">
		<div style="color: red; margin: 10px 0px;">

			Login Failed!!!<br /> Reason :
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

		</div>
	</c:if>


	<form name='f' action="j_spring_security_check" method='POST'>
		<table>
			<tr>
				<td><s:message code="User.label"></s:message></td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			<tr>
				<td><s:message code="Password.label"></s:message></td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td><input name="submit" type="submit" value="submit" /></td>
			</tr>
		</table>
	</form>
<body> --%>
<body>
	<jsp:include page="_menu.jsp" />
	<div class="main">
		<div class="container">


			<div class="row">
				<div class="col">

					<h3>
						<s:message code="login.label"></s:message>
					</h3>

				</div>
			</div>


			<div class="card-group">
				<div class="card">
					<div class="card-body">

						<div class="row text-center">
							<div class="col">

								<img src="<c:url value="img/signup-image.jpg" />"
									alt="sing up image" />


							</div>
						</div>
					</div>
				</div>



				<div class="card">
					<div class="card-body">
						<form name='f' action="j_spring_security_check" method='POST'>


							<br>


							<div class="row text-center">
								<div class="col text-center">

									<div class="form-group">
										<s:message code="User.label"></s:message>
										<div class="col">
											<input type='text' name='username' value=''>
										</div>
									</div>
								</div>
							</div>

<br>
							<div class="row text-center">
								<div class="col text-center">

									<div class="form-group">
										<s:message code="Password.label"></s:message>

										<div class="col">
											<input type='password' name='password' />
										</div>
									</div>
								</div>
							</div>
							
							<br>

							<div class="row text-center">
								<div class="col text-center">

									<div class="d-flex justify-content-around">
										<button type="submit" class="btn btn-primary text-center">
											<s:message code="login.label"></s:message></button>
									</div>

									<!-- /login?error=true -->
									<c:if test="${param.error == 'true'}">
										<div style="color: red; margin: 10px 0px;">

											Login Failed!!!<br /> Reason : Email ou mot de passe incorrect
											${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

										</div>
									</c:if>
									<br>
									
								</div>
							</div>
					</div>

				</div>

				</form>



			</div>
		</div>
	</div>

</body>


</body>
</html>