<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>��ٱ���</h1>
	
	<fieldset>
		<legend>��ǰ����Ʈ</legend>
		<!--  ��Ű�� ����� ��ǰ���� ����ϴ� ����� �����Ͻÿ�. -->
		<ul>
		<%
		Cookie[] cookies = request.getCookies();
		
		if (cookies != null){
			for (int i = 0; i < cookies.length; i++){
				if(cookies[i].getName().contains("product")){
					String result = cookies[i].getValue().replaceAll("product", "��ǰ");
					out.print("<li>"+result+"</li>");
				}
			}
		}
		%>
		</ul>
		<p><a href="product_list.jsp">��Ӽ����ϱ�</a></p>
		<p><a href="product_deleteAll.jsp">����ǰ����</a></p>
		
	</fieldset>
	
</body>
</html>