<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
<form action="/springproject1/client/updateClient" method="post">
		<input type="hidden" name="id" value="${client.getId()}"><br>
		Client Name:<input type="text" name="clientName" value="${client.getClientName()}" ><br>
		Client Address:<input type="text" name="clientAddress" value="${client.getClientAddress()}"><br>
		<br>
		<input type="submit"><br>
	
	</form>
 -->

<form action="/springproject1/client/updateClient" method="post">
    <input type="hidden" id="fname" name="id" value="${client.getId()}" >

	<label for="lname">Client Name</label>
    <input type="text" id="lname" name="clientName" value="${client.getClientName()}">
    
    <label for="lname">Client Address</label>
    <input type="text" id="lname" name="clientAddress" value="${client.getClientAddress()}">
    
    <input type="submit" value="Submit">
  </form>

</body>
</html>