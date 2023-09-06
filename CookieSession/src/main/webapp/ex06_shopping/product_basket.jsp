<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>장바구니</h1>
	
	<fieldset>
		<legend>상품리스트</legend>
		<!--  쿠키에 저장된 상품들을 출력하는 기능을 구현하시오. -->
		<ul>
		<%
		Cookie[] cookies = request.getCookies();
		
		if (cookies != null){
			for (int i = 0; i < cookies.length; i++){
				if(cookies[i].getName().contains("product")){
					String result = cookies[i].getValue().replaceAll("product", "상품");
					out.print("<li>"+result+"</li>");
				}
			}
		}
		%>
		</ul>
		<p><a href="product_list.jsp">계속쇼핑하기</a></p>
		<p><a href="product_deleteAll.jsp">모든상품삭제</a></p>
		
	</fieldset>
	
</body>
</html>