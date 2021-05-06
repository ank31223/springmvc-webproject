<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: green;
	color: white;
}

tr:hover {
	background-color: #f5f5f5;
}
</style>

</head>
<body>

	<p><a href="/springproject1/employee/getAllEmployees">employeeHomePage</a></p>
	<p><a href="/springproject1"> HomePage</a></p>
	<h1>Clients of ${employee.getName()}</h1>

	<div>
		<table>
			<tr>
				<th>Id</th>
				<th>Client Name</th>
				<th>Client Address</th>
				<th>Remove Client</th>
			</tr>
			<c:forEach var="client" items="${clientList1}">
				<tr>
					<td>${client.getId()}</td>
					<td>${client.getClientName()}</td>
					<td>${client.getClientAddress()}</td>
					<td><a href="/springproject1/employee/removeClientFromEmployee/${employee.getId()}/${client.getId()}"> remove Clients</a></td>
				</tr>
			</c:forEach>


		</table>

	</div>
	<h1>Assignable clients to
		${ecr.getListEmployee().get(0).getName()}</h1>

	<div>
		<table>
			<tr>
				<th>Id</th>
				<th>Client Name</th>
				<th>Client Address</th>
				<th>Action</th>
			</tr>
			<c:forEach var="client" items="${clientList2}">
				<tr>
					<td>${client.getId()}</td>
					<td>${client.getClientName()}</td>
					<td>${client.getClientAddress()}</td>
					<td><a
						href="/springproject1/employee/addClientToEmployee/${employee.getId()}/${client.getId()}">Add Client</a>
					</td>
				</tr>
			</c:forEach>


		</table>

	</div>




</body>
</html>