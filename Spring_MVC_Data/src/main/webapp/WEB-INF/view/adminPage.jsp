<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title}</title>
</head>
<body>
	<jsp:include page="_menu.jsp" />

	<h2><spring:message code="adminPage.label"></spring:message></h2>

	<h3><spring:message code="welcome.label"></spring:message> : ${pageContext.request.userPrincipal.name}</h3>

	<b><spring:message code="thisIs.label"></spring:message></b>
</body>
</html>