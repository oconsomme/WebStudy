<%@page import="com.MemberDTO"%>
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
		session.setAttribute("id", "hodoodaddy");
	%>
	
	<%-- 
		EL의 조건
		 - EL은 java의 저장된 아무 변수의 값을 꺼내서 쓸 수 있는 것이 아니라
		  Scope에 저장된 값만 꺼내서 사용할 수 있다 
		  * Scope 영역이란 - page, request, session, application
	
	--%>
	
	<!-- session에 저장된 id라는 이름의 값을 웹 페이지에 표현하시오 -->
	
	${id}님 환영합니다! <br>
	
	<%--
		EL의 다양한 연산자		
	--%>
	<%
		pageContext.setAttribute("num", 10);	
		pageContext.setAttribute("isCheck", true);
	%>
	
	${num} <br>
	${num + 10} <br>
	${num - 5} <br>
	${num * 3} <br>
	${num / 2} ${num div 2} <br>
	${num % 3} ${num mod 3}<br>
	${num > 5 && num > 3} <br> 
	${num > 5 and num > 3} <br>
	${num > 5 || num > 3} <br> 
	${num > 5 or num > 3} <br> 
	
	${isCheck} <br>
	${!isCheck} ${not isCheck}<br>
	
	${num > 3} ${num gt 3} <br> <!-- greater than -->
	${num < 20} ${num lt 20} <br> <!-- less than -->
	${num >= 3} ${num ge 3} <br> <!-- greater or equal -->
	${num <= 20} ${num le 20} <br> <!-- less or equal -->
	
	${num == 10} ${num eq 10} <br> <!-- equal -->
	${num != 20} ${num ne 20} <br> <!-- not equal -->
	
	<%--
		El에서 DTO,VO를 가져오면 어떻게 가져올까?
	--%>
	
	<%
		MemberDTO dto = new MemberDTO("pbk", "1234", "호두아빠", "광주");
		pageContext.setAttribute("dto", dto);
	%>
	
	<!-- page영역에 저장된 dto의 아이디 값을 표현식을 사용하여 웹페이지에 표현하시오 -->
	<%
		MemberDTO info = (MemberDTO)pageContext.getAttribute("dto");
	%>
	
	<%= info.getId() %>
	
	<!-- 
		EL 사용하여 dto안에 있는 private 필드 값을 가져오기 위해서는
		반드시 getter 메소드가 필요하다
	-->
	
	${dto.id}
	${dto.pw}
	${dto.nick}
	${dto.addr}
	
	<!-- 만약 el로 없는 값을 가져오면 어떻게 될까? -->
	
	${empty good}
	${not empty good}
	
	<!-- 
		만약에 동일한 이름의 값이 여러 영역에 들어가있다면
		EL에서는 어떻게 값을 가져올까
		
		EL에서 값을 가져오겠다 예시) ${name} 하게 되는 순간
		EL은 pageContext영역부터 name의 값이 있는 지 찾게 된다
		
		찾는 순서
		page -> request -> session -> application
		
		그런데
		내가 EL에서 특정 영역에서만 찾고자 할 때 name 앞에 특정 영역 Scope를 붙여준다
	-->
	
	<%
	 	pageContext.setAttribute("name", "박병관");
		request.setAttribute("name", "김미희");
		session.setAttribute("name", "황해도");
		application.setAttribute("name", "조준용");
	%>
	
	${name} <!-- 페이지 영역(가장 작은 영역)의 값 "박병관" 출력 -->
	${sessionScope.name} <!-- 특정 영역의 값 출력 -->
	
	
	
</body>
</html>