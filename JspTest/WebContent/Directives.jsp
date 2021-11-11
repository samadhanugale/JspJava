<%@ page import="java.util.Date,java.lang.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" info="JSP page by User" buffer="16kb" errorPage="myErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Directives</title>
</head>
<body>

Today is : <%= new Date() %>

 <br>
 
 <%= getServletInfo() %>
 
 <%--Includes directive includes file --%>
 <%@ include file = "index.html" %>
</body>
</html>