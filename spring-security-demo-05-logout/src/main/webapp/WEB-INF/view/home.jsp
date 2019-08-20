<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Naren Company Home Page</title>
</head>
<body>
<h2>Naren Company Home Page</h2>
<hr>
<p>
Welcome to the Naren's Company home page: yahoooo!!</p>


<form:form action="${pageContext.request.contextPath}/logout" method="post">

<input type="text" value="Logout">

</form:form>


</body>
</html>