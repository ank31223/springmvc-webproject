<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>

</head>
<body>

<!--  

<form action="/springproject1/employee/updateEmployee" method="post">
		<input type="hidden" name="id" value="${employee.getId()}"><br>
		Employee Name:<input type="text" name="name" value="${employee.getName()}" ><br>
		Employee gender:<input type="text" name="gender" value="${employee.getGender()}"><br>
		Employee age:<input type="text" name="age" value="${employee.getAge()}" ><br>
		Employee email:<input type="text" name="email"  value="${employee.getEmail()}"><br>
		<input type="submit"><br>
	
	</form>

-->

	
	<form action="/springproject1/employee/updateEmployee" method="post">
    <input type="hidden" id="fname" name="id" value="${employee.getId()}">

	<label for="lname">Employee Name</label>
    <input type="text" id="lname" name="name" value="${employee.getName()}">
    
    <label for="lname">Gender</label>
    <input type="text" id="lname" name="gender" value="${employee.getGender()}">
    
    <label for="lname">Age</label>
    <input type="text" id="lname" name="age" value="${employee.getAge()}">
    
    <label for="lname">Email</label>
    <input type="text" id="lname" name="email" value="${employee.getEmail()}">

    
    <input type="submit" value="Submit">
  </form>
</body>
</html>