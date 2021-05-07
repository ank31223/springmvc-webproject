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
<!-- 
<form action="/springproject1/client/addClient" method="post">
		Client Name:<input type="text" name="clientName"><br>
		Client Address:<input type="text" name="clientAddress"><br>
		<input type="submit"><br>

	</form>
 -->
 
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
 
 <div>
  <form action="/springproject1/client/addClient" method="post">
  
    <label for="fname">Client Name</label>
    <input type="text" id="fname" name="clientName" placeholder="Client name...">
   
    <label for="lname">Client Address</label>
    <input type="text" id="lname" name="clientAddress" placeholder="Client Address...">

    <input type="submit" value="Submit">
  </form>
  
  
  
  
  
  
</div>
	

</body>
</html>