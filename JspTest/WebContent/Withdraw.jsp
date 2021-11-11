

<%@ page import="com.neo.WithdrawAmount" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="myErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WithdrawAmmount</title>
</head>
<body>
<%	
	int amount = Integer.parseInt(request.getParameter("txtamt"));		
	WithdrawAmount.withdraw(amount);
	
	out.print(WithdrawAmount.ShowBal());
%>
<%@include file="index.html" %>

</body>
</html>