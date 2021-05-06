<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <h1>This is employee Form</h1>
	<form action="/springproject1/employee/addEmployee" method="post">
		Employee Name:<input type="text" name="name"><br>
		Employee gender:<input type="text" name="gender"><br>
		Employee age:<input type="text" name="age"><br>
		Employee email:<input type="text" name="email"><br>
		<input type="submit"><br>
	
	</form>

</body>
</html>