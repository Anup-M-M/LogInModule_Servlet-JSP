<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
<h2>Welcome Page</h2>
	
	<% 
	response.setHeader("Cache-Control", "no-cache, no-store, must-validate"); // HTTP 1.1
	response.setHeader("pragma", "no-cache"); // HTTP 1.0		
	response.setHeader("Expires","0"); // Proxies
	
		if(session.getAttribute("username") == null)
			response.sendRedirect("login.jsp");
	%>
	Welcome...  ${username} <br/>  
	
	<a href="videos.jsp">Video here</a>
	
	<form action="logout">
		<input type="submit" value="Logout">
	</form>
</body>
</html>