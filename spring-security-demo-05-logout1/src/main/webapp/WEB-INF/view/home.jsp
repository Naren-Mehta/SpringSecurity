<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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

<form:form action="${pageContext.request.contextPath}/logout"
		method="post">
<input type="submit" value="Logout">
</form:form>
</body>
</html>