<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		// ����(Session)
		//	- ������� ������ ���������ִ� ���
		//	- ����PC�� ����
		//	- �پ��� �ڷ��� �����͸� ���� --> Object ��ü�� ��ȯ�Ǿ� ����(��ĳ����)
		//	- ������ ���� ��, ������ �뷮 ������ ����(���� �뷮�� ���� �޶��� �� ����)
		//	- �� �������� �������� ����
		//	* ���ǿ� �����͸� ���к��ϰ� �����ϸ� �ȵȴ�!
		//	  ����ڰ� ���񽺸� �̿��ϴ� �� �ʿ��� �������� �����ؾ� �Ѵ�!
		
		// ���� ������ �����͸� �����ϴ� ���
		session.setAttribute("name", "Justin");
		session.setAttribute("age", 25);
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("cookie");
		list.add("session");
		
		session.setAttribute("list", list);
	
	%>
	
	<h1>���ǿ����� ������ ���� �Ϸ�</h1>
</body>
</html>