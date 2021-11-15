<%@page import="javax.swing.plaf.metal.MetalBorders.Flush3DBorder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Action tags</title>
</head>
<body>
<h2>Hello there</h2>


<%--
<jsp:include page="Directives.jsp"></jsp:include>

<jsp:forward page="tagTest.jsp">
	<jsp:param value="10" name="p1"/>

</jsp:forward> --%>

<jsp:useBean id="user" class="com.neo.UserLogin"/>

<jsp:setProperty name="user" property="userName" value="admin"/>
<jsp:setProperty name="user" property="password" value="admin123"/>

<%
	String userName = request.getParameter("userName");
	String password = request.getParameter("password");
	
	if(userName.equals(user.getUserName()) && password.equals(user.getPassword())){
%>
	<h3>Welcome User!</h3>
	<jsp:getProperty property="userName" name="user"/>
	<jsp:include page="Directives.jsp"></jsp:include>
<% }else{%>
<h3>Invalid Credentials</h3>
<jsp:include page="Login.html"></jsp:include>

<%} %>

</body>
</html>