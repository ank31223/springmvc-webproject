<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="/springproject1/employee/updateEmployee" method="post">
		<input type="hidden" name="id" value="${employee.getId()}"><br>
		Employee Name:<input type="text" name="name" value="${employee.getName()}" ><br>
		Employee gender:<input type="text" name="gender" value="${employee.getGender()}"><br>
		Employee age:<input type="text" name="age" value="${employee.getAge()}" ><br>
		Employee email:<input type="text" name="email"  value="${employee.getEmail()}"><br>
		<input type="submit"><br>
	
	</form>
</body>
</html>