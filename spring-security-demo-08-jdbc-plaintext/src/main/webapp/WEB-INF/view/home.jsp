<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Naren Company Home Page</title>
</head>
<body>
<h2>Naren Company Home Page</h2>
<hr>
<p>Welcome to the Naren's Company home page: yahoooo!!</p>


<!-- display username & role -->

<p>

 User : <security:authentication property="principal.username"/><br><br>
 Role : <security:authentication property="principal.authorities"/><br><br>

</p>



<security:authorize access="hasRole('MANAGER')">
<hr>
<p>
	<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a> (Only for Manager peeps)
</p>
</security:authorize>


<security:authorize access="hasRole('ADMIN')">
<hr>
<p>
	<a href="${pageContext.request.contextPath}/systems">System Meeting</a> (Only for Admin peeps)
</p>
</security:authorize>





<form:form action="${pageContext.request.contextPath}/logout"
		method="post">
<input type="submit" value="Logout">
</form:form>
</body>
</html>