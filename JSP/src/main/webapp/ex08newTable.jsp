<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ex08newTable</title>
</head>
<body>
	<%-- �ݺ����� ����Ͽ� 10��¥�� ���� �ִ� ���̺� ����� --%>
	
	<table border="1px solid black">
		<tr> 
			<% for(int i=1; i<=10; i++) {
					out.print("<td>" + i + "</td>"); //JspWriter..���尴ü�� ���� ������ �ʿ�x
			   } %>
		</tr>
	</table>
</body>
</html>