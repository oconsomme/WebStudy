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
		idol.add("아이린");
		idol.add("슬기");
		idol.add("웬디");
		idol.add("조이");
		idol.add("예리");
		
		pageContext.setAttribute("idol", idol);
	%>
	
	<c:forEach items="${idol}" var="name">
		${name}
	</c:forEach>
	
	<br>
	
	<%
		MemberDTO dto1 = new MemberDTO("pbk", "1234", "호두아빠", "광주");
		MemberDTO dto2 = new MemberDTO("iu", "5678", "아이유", "서울");
		MemberDTO dto3 = new MemberDTO("son", "9999", "손흥민", "영국");
		MemberDTO dto4 = new MemberDTO("jjy", "7777", "준용쌤", "전주");
		MemberDTO dto5 = new MemberDTO("lmh", "4567", "이명헌", "제주");
		
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		list.add(dto1);
		list.add(dto2);
		list.add(dto3);
		list.add(dto4);
		list.add(dto5);
		pageContext.setAttribute("list", list);
	%>
	<table border = '1px'>
	<!-- 여기 아래에 JSTL을 통해서 list 안에 있는 회원의 정보를 출력 -->		
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>닉네임</td>
			<td>주소</td>
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