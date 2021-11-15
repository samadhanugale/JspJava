<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration jsp using UseBean</title>
</head>
<body>

	<jsp:useBean id="student" class="com.neo.Student"/>
	<jsp:setProperty property="*" name="student"/>
	
	You have entered following details<br>
	<jsp:getProperty property="name" name="student"/><br>
	<jsp:getProperty property="course" name="student"/><br>
	<jsp:getProperty property="mobile" name="student"/><br>
	<jsp:getProperty property="email" name="student"/><br>
	<jsp:getProperty property="marks" name="student"/><br>
	
</body>
</html>