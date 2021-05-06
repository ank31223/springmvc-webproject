<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="/springproject1/client/updateClient" method="post">
		<input type="hidden" name="id" value="${client.getId()}"><br>
		Client Name:<input type="text" name="clientName" value="${client.getClientName()}" ><br>
		Client Address:<input type="text" name="clientAddress" value="${client.getClientAddress()}"><br>
		<br>
		<input type="submit"><br>
	
	</form>

</body>
</html>