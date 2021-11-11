<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Project</title>
</head>
<body>
	<%--Scriptlet tag to execute java source code--%>
	<% 
	out.print("Today's Date is : "+new java.util.Date().toString()+"<br>"); 
	String name = request.getParameter("txtuser");
	String pass = request.getParameter("txtpass");
	
	out.print("Welcome "+name+"<br>");
	out.print("Password :  "+pass+"<br>");
	%>
	
	<%--Expression tag to write output to the output stream of the responce. Mainly used to write values or methods--%>
	
	<hr>
	<%= "Hi  " %>
	<%= new java.util.Date().toString() %><br>
	<%= request.getParameter("txtuser") %><br>
	
	<%--Declaration tag - to declare fields and methods --%>
	<%! int x = 120; %><br>
	<%= "Value of x :"+x %><br>
	<%!
		int cube(int num){
		return num*num*num;
			}
	%><br>
	<%= "Cube of 5 : "+cube(5) %><br>
	<% out.print("Cube of 6 : "+cube(6)); %><br>
	
	<%--Directives : messaages that tells the web container to translate jsp page into corresponding servlet --%>
	<%--Types : 
		1. 	Page => Define attribute that apply to entire jsp page
			eg. <%@ page attribute = 'value'%>
					import, contentType,extends, info, buffer, language,isThreadSafe,autoFlush
		2. include => 
	 --%>
	
</body>
</html>