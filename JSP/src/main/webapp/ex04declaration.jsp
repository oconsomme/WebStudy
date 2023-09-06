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
		선언문
		- JSP안에서 필드 또는 메서드를 만들고 싶을 때 사용
	--%>
	
	<%!  
		// 선언문 -> 필드로 간다
		public String name = "박병관";
		
		public int plus(int num1, int num2) {
			return num1 + num2;
		}
	
	%>
	
	<% 
		// 스크립트릿 -> service안으로 들어간다
		// 지역변수. public 붙일수 없음.
		String name2 = "조준용";
	%>
	
	<%= plus(30, 40) %> <%-- 표현식에서는 세미콜론 안쓰넹,, --%> 

</body>
</html>