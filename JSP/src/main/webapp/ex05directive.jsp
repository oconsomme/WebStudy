
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>  <%-- ���� ������ ���п� �ѱ� ��밡�� --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	������ �ʹ��ʹ� �ູ�� ������ �Դϴ� ^^;
	<br>
	���� ����� ����� ���ڴ�?
	
	<% 
		Random rd = new Random();
		int lucky = rd.nextInt(10)+1;
		
	%>
	<strong><%= lucky %></strong>
	�Դϴ�.
	
	
	
</body>
</html>