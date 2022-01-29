<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
	<form:form action="/userList" method="POST" modelAttribute="user">
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${userList }" var="u">
					<tr>
						<td>${u.name }</td>
						<td>${u.email }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form:form>
</body>
</html>