<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP Test</title>
<style>
	/* CSS �ּ� */
</style>
</head>
<script>
	// JS �ּ�
</script>
<body>

	<!-- ���� �ּ� ���� -->
	<!-- HTML �ּ� -->
	<%-- JSP �ּ� --%>
	
	<h1>������ �ݿ���</h1>
	
	<% 
		int num = 100; 
		String name = "ȣ�ξƺ�";
	%>
	<% 
		int age = 20;
		int size = 20;
		String color = "yellow";
	%>
	<%= name %>
	<hr size="<%=size%>" color="<%=color%>">
	<%= name %>
	
</body>
</html>