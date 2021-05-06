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

	<p>
		<a href="/springproject1/client/getAllClients">clientHomePage</a>
	</p>
	<p>
		<a href="/springproject1"> HomePage</a>
	</p>

	<h1>Employees of ${client.getClientName()}</h1>

	<div>
		<table>
			<tr>
				<th>Id</th>
				<th>Employee Name</th>
				<th>Employee Gender</th>
				<th>Employee Age</th>
				<th>Employee Email</th>
				<th>Remove Employee</th>
			</tr>
			<c:forEach var="employee" items="${employeeList1}">
				<tr>
					<td>${employee.getId()}</td>
					<td>${employee.getName()}</td>
					<td>${employee.getGender()}</td>
					<td>${employee.getAge()}</td>
					<td>${employee.getEmail()}</td>
					<td><a
						href="/springproject1/client/removeEmployeeFromClient/${client.getId()}/${employee.getId()}">
							remove Clients</a></td>
				</tr>
			</c:forEach>


		</table>

	</div>
	<h1>Assignable employees to ${client.getClientName()}</h1>

	<div>
		<table>
			<tr>

				<th>Id</th>
				<th>Employee Name</th>
				<th>Employee Gender</th>
				<th>Employee Age</th>
				<th>Employee Email</th>
				<th>Add</th>
			</tr>
			<c:forEach var="employee" items="${employeeList2}">
				<tr>
					<td>${employee.getId()}</td>
					<td>${employee.getName()}</td>
					<td>${employee.getGender()}</td>
					<td>${employee.getAge()}</td>
					<td>${employee.getEmail()}</td>
					<td><a
						href="/springproject1/client/addEmployeeToClient/${client.getId()}/${employee.getId()}">
							Add Clients</a></td>

				</tr>
			</c:forEach>


		</table>

	</div>


</body>
</html>