<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ������ ������ ��ǰ���� ��Ű�� ����ǵ��� ����� �����Ͻÿ�. 
		 - �Ѱܹ��� value���� ��Ű�� name���� ���
	-->
	<%
		String[] products = request.getParameterValues("product");
		if(products != null){
			for (int i = 0; i < products.length; i++){
				// ��Ű �̸��� �ϳ��� �����ϰ� �Ǹ� �������� ����� ���� ��Ű�� �����ȴ�.
				// ���� ��ǰ���� ����ǰ� �Ϸ��� ��Ű �̸��� �ߺ��Ǹ� �� �ȴ�.
				Cookie cookie = new Cookie(products[i],products[i]);
				response.addCookie(cookie);
			}
		}
		
		//response.sendRedirect("product_basket.jsp");
	
	%>
	
	
	
	
</body>
</html>