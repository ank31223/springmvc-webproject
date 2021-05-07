<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
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
	<h1>This is employee Form</h1>
	<!-- 
  
  <form action="/springproject1/employee/addEmployee" method="post">
		Employee Name:<input type="text" name="name"><br>
		Employee gender:<input type="text" name="gender"><br>
		Employee age:<input type="text" name="age"><br>
		Employee email:<input type="text" name="email"><br>
		<input type="submit"><br>
	
	</form>
   -->

<div>
  <form action="/springproject1/employee/addEmployee" method="post">
    <label for="fname">Employee Name</label>
    <input type="text" id="fname" name="name" placeholder="employee name...">

    <label for="lname">Gender</label>
    <input type="text" id="lname" name="gender" placeholder="employee gender...">
    
    <label for="lname">Age</label>
    <input type="text" id="lname" name="age" placeholder="employee age...">
    
    <label for="lname">Email</label>
    <input type="text" id="lname" name="email" placeholder="Employee email...">

    
    <input type="submit" value="Submit">
  </form>
</div>




</body>
</html>