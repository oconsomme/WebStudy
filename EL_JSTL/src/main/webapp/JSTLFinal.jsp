<%@page import="com.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%
		ArrayList<String> idol = new ArrayList<String>();
		idol.add("���̸�");
		idol.add("����");
		idol.add("����");
		idol.add("����");
		idol.add("����");
		
		pageContext.setAttribute("idol", idol);
	%>
	
	<c:forEach items="${idol}" var="name">
		${name}
	</c:forEach>
	
	<br>
	
	<%
		MemberDTO dto1 = new MemberDTO("pbk", "1234", "ȣ�ξƺ�", "����");
		MemberDTO dto2 = new MemberDTO("iu", "5678", "������", "����");
		MemberDTO dto3 = new MemberDTO("son", "9999", "�����", "����");
		MemberDTO dto4 = new MemberDTO("jjy", "7777", "�ؿ��", "����");
		MemberDTO dto5 = new MemberDTO("lmh", "4567", "�̸���", "����");
		
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		list.add(dto1);
		list.add(dto2);
		list.add(dto3);
		list.add(dto4);
		list.add(dto5);
		pageContext.setAttribute("list", list);
	%>
	<table border = '1px'>
	<!-- ���� �Ʒ��� JSTL�� ���ؼ� list �ȿ� �ִ� ȸ���� ������ ��� -->		
		<tr>
			<td>��ȣ</td>
			<td>���̵�</td>
			<td>��й�ȣ</td>
			<td>�г���</td>
			<td>�ּ�</td>
		</tr>
		<c:forEach varStatus="i" items="${list}" var="info" >
			<tr>
				<td>${i.count}</td>
				<td>${info.id}</td>
				<td>${info.pw}</td>
				<td>${info.nick}</td>
				<td>${info.addr}</td>
			</tr>
		</c:forEach>
	</table>
	
	
</body>
</html>