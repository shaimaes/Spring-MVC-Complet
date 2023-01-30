<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<div style="border: 1px solid #ccc; padding: 5px; margin-bottom: 20px;">

	<a href="welcome">Home</a> | &nbsp; <a href="login">Login</a> | &nbsp;

	<a href="userInfo">User Info</a> | &nbsp; <a href="admin">Admin</a>

	<!--  &nbsp;
     <a href="/listemp">Logout</a> -->

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<sec:authorize access="hasRole('ADMIN')">
     | &nbsp;
     <a href="listemp">Liste Employée</a>

		</sec:authorize>
     | &nbsp;
     <a href="logout">Logout</a>

	</c:if>

</div>
