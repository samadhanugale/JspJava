<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
</head>
<body>

	<h3><font color="red">Error! Exception </font></h3>
	The error is : <%= exception.getMessage() %>

</body>
</html>