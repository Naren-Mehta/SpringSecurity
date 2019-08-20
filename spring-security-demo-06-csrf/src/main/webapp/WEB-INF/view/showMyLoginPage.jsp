<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login Page</title>
</head>
<style>
	.failed{
		color: red;
	}
</style>
<body>

	<h3>My Custom Login Page</h3>

	<form:form
		action="${pageContext.request.contextPath}/authenticateTheUser"
		method="post">

		<c:if test="${param.error !=null }">
			<i class="failed">Sorry! You entered invaild username/password</i>
		</c:if>

		<p>
			Username : <input type="text" name="username" />
		</p>

		<p>
			Password : <input type="password" name="password" />
		</p>
		<p>
			<input type="submit" value="Login" />
		</p>

	</form:form>

</body>
</html>