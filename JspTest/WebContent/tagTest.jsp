<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri = "WEB-INF/customTag.tld" prefix="myTag"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom Tags</title>
</head>
<body>

<myTag:CurrentDateTime/>
<br>
<myTag:CurrentTime>time is : </myTag:CurrentTime>
<br>
<myTag:Greeting>sam</myTag:Greeting>

<br>
<myTag:RepeatBody frequency="3"><br>Thisss </myTag:RepeatBody>
<br>
<% int val = Integer.parseInt(request.getParameter("p1")); %>
<%out.print(val); %>

</body>
</html>