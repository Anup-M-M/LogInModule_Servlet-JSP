<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Videos Page</title>
</head>
<body>
<h2>Videos</h2>

	<% 
		response.setHeader("Cache-Control", "no-cache, no-store, must-validate"); // HTTP 1.1
		response.setHeader("pragma", "no-cache"); // HTTP 1.0		
		response.setHeader("Expires","0"); // Proxies
		
		if(session.getAttribute("username") == null)
			response.sendRedirect("login.jsp");
	%>
	
	<iframe width="560" height="315" src="https://www.youtube.com/embed/bm0OyhwFDuY?si=WOAe_SsiMENaaLvt" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
	<br/>
	<a href="https://www.youtube.com/results?search_query=java+tutorial">Java Tutorials</a>
</body>
</html>