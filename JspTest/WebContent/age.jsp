<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Age</title>
</head>
<body>
<% 
	
	int age = Integer.parseInt(request.getParameter("age"));
	
	out.print("Age is "+age+"<br>");
	
	%>
	
	
	<%!
		int ageYear(int num){
		return 2021-num;
			}
	%>
	<%= "Birth year is : "+ageYear(age) %><br>
	
	
	
	<a href="ageBirthLeap.html"> -- Go Back</a>

</body>
</html>