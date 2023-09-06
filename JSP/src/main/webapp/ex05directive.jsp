
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>  <%-- ↑위 지시자 덕분에 한글 사용가능 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	오늘은 너무너무 행복한 월요일 입니다 ^^;
	<br>
	오늘 당신의 행운의 숫자는?
	
	<% 
		Random rd = new Random();
		int lucky = rd.nextInt(10)+1;
		
	%>
	<strong><%= lucky %></strong>
	입니다.
	
	
	
</body>
</html>