<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ǽ�</title>
</head>
<body>	
	<%-- 1���� 100������ ���� �ݺ����� ���Ͽ� ���Ѵ��� h1�±� �ȿ� ǥ���Ͻÿ� --%>
	
	
	<%  // ��ũ��Ʈ�� -> jsp�ȿ��� java�ڵ带 ����ϱ� ���ؼ� ����ϴ� ��(�� �ּ��� ������ �Ⱥ���)
		// <%= : ǥ����
		int sum = 0;
		for(int i=1; i<=100; i++) {
			sum += i;
		}
	%>
	<h1> 	1���� 100������ ���� -> <%= sum %> </h1>
	
</body>
</html>