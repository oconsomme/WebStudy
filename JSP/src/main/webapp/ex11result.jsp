<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	* {
		text-align: center;
		margin: auto;
		padding: auto;
		margin-top: 5px;
	}
	
	filedset {
		margin-left: 10px;
		margin-right: 10px;
	}

</style>
</head>
<body>
	<%
		// response.setCharacterEncoding("EUC-KR");
		request.setCharacterEncoding("EUC-KR");
	
		String title = request.getParameter("title");
		String[] item = request.getParameterValues("item");
		
		Random rd = new Random();
		int rand = rd.nextInt(item.length);
	%>

	<div>
		<fieldset>
			<legend>������÷ ���</legend>
			<p><%= title %></p>
			<p><%= item[rand] %></p> <%-- item[rd.nextInt(item.length)] --%>
		</fieldset>
	</div>
</html>

