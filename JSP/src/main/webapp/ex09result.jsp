<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ex09result</title>
</head>
<body>
	
	<% 
		String text = request.getParameter("text");
	%>
	
	<%= text %>
	
</body>
</html>