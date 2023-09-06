<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ex10makeTableResult</title>
</head>
<style>
	* {
		margin: auto;
		text-align: center;
		margin-top: 7px;
	}
</style>
<body>
	<% 
		int c = Integer.parseInt(request.getParameter("c"));
		int r = Integer.parseInt(request.getParameter("r"));
	%>
	
	<h2><%= c %>층</h2> 
	<h2><%= r %>방</h2>
	
	<table border="1">
		
	<% 
		for(int i=0; i<c; i++) {
			out.print("<tr>");
			for(int j=0; j<r; j++) {
				out.print("<td>" + j + "</td>");
			}
			out.print("</tr>");
		}
	%>

	</table>
	
</body>
</html>