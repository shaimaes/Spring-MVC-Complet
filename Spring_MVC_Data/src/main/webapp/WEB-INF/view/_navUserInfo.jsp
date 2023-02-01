

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
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


<title>list employee</title>
</head>

<body>

	<%-- <div style="border: 1px solid #ccc; padding: 5px; margin-bottom: 20px;">

                        <a href="welcome">Welcome</a> | &nbsp; <a href="login">Login</a> | &nbsp;

                        <a href="userInfo">User Info</a> | &nbsp; <a href="admin">Admin</a>

                        <!--  &nbsp;
     <a href="/listemp">Logout</a> -->

                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <sec:authorize access="hasRole('ADMIN')">
                                | &nbsp;
                                <a href="listemp">Liste Employée</a>

                                <form:form action="save" method="post" modelAttribute="employee">
                                    <a href="${pageContext.request.contextPath }/addemp?mylocale=en">English</a>

                                    <a href="${pageContext.request.contextPath }/addemp?mylocale=fr">Francais</a>
                                </form:form>
                            </sec:authorize>
                            | &nbsp;
                            <a href="logout">Logout</a>

                        </c:if>

                        </div> --%>



	<header class="navbar navbar-expand-md navbar-dark bg-light">

		<!-- barre de navigation -->

		<div
			class="container-fluid justify-content-center justify-content-md-between">
			<div class="d-flex my-2 my-sm-0">
				<ul class="navbar-nav">
					<li><a href="welcome"> <spring:message
								code="welcome.label"></spring:message>
					</a> &nbsp;</li>
				</ul>
				<ul class="navbar-nav">
					<li><a href="login"> <spring:message code="login.label"></spring:message>
					</a> &nbsp;</li>
				</ul>
				<ul class="navbar-nav">
					<li><a href="userInfo"> <spring:message
								code="userInfo.label"></spring:message>
					</a> &nbsp;</li>
				</ul>
				<ul class="navbar-nav">
					<li><a href="admin">Admin</a>&nbsp;</li>
				</ul>

				<form:form action="save" method="post" modelAttribute="employee">
					<a href="${pageContext.request.contextPath }/userInfo?mylocale=en">EN</a>

					<a href="${pageContext.request.contextPath }/userInfo?mylocale=fr">FR</a>
				</form:form>

			</div>

			<ul class="navbar-nav flex-row">
				<li class="nav-item me-3 me-lg-0"><c:if
						test="${pageContext.request.userPrincipal.name != null}">
						<sec:authorize access="hasRole('ADMIN')">
                                                &nbsp;
                                                <!-- <a href="listemp">Liste Employée</a> -->
							<a href="listemp"> <spring:message code="listemp.label"></spring:message>
							</a>

							<%-- <form:form action="save" method="post" modelAttribute="employee">
                                                    <a
                                                        href="${pageContext.request.contextPath }/addemp?mylocale=en">English</a>

                                                    <a
                                                        href="${pageContext.request.contextPath }/addemp?mylocale=fr">Francais</a>
                                                    </form:form> --%>
						</sec:authorize>
                                            &nbsp;
                                            <!-- <a href="logout">Logout</a> -->
						<a href="logout"> <spring:message code="logout.label"></spring:message>
						</a>

					</c:if>
			</ul>

		</div>
	</header>
</body>

</html>