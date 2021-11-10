<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leap</title>
</head>
<body>

	<%
	int year = Integer.parseInt(request.getParameter("year"));
	%>


	<%="Year is : " + year%><br>

	<%
	if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0))
		out.println("Specified year is a leap year");
	else
		out.println("Specified year is not a leap year");
	%>
	<a href="ageBirthLeap.html"> -- Go Back</a>

</body>
</html>