<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>This is Client Form</h1>
	<form action="/springproject1/client/addClient" method="post">
		Client Name:<input type="text" name="clientName"><br>
		Client Address:<input type="text" name="clientAddress"><br>
		<input type="submit"><br>

	</form>

</body>
</html>