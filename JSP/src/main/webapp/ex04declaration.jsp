<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ex04declaration</title>
</head>
<body>

	<%--  
		����
		- JSP�ȿ��� �ʵ� �Ǵ� �޼��带 ����� ���� �� ���
	--%>
	
	<%!  
		// ���� -> �ʵ�� ����
		public String name = "�ں���";
		
		public int plus(int num1, int num2) {
			return num1 + num2;
		}
	
	%>
	
	<% 
		// ��ũ��Ʈ�� -> service������ ����
		// ��������. public ���ϼ� ����.
		String name2 = "���ؿ�";
	%>
	
	<%= plus(30, 40) %> <%-- ǥ���Ŀ����� �����ݷ� �Ⱦ���,, --%> 

</body>
</html>