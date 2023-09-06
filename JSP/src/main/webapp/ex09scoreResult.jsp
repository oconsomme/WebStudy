<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ex09scoreResult</title>
</head>
<style>
	td {
		padding-right:100px;
		padding-top: 12px;
	
	}
</style>
<body>
	
	
	<% 
		// response.setCharacterEncoding("EUC-KR");
		request.setCharacterEncoding("EUC-KR");
	
		String name = request.getParameter("name");
		
		int java = Integer.parseInt(request.getParameter("java"));
		int web = Integer.parseInt(request.getParameter("web"));
		int iot = Integer.parseInt(request.getParameter("iot"));
		int android = Integer.parseInt(request.getParameter("android"));
		
		double avg = (java+web+iot+android) / 4.0;
		
		String grade = "";
		
		if(avg >= 95) {
			grade = "A+";
		} else if(avg >= 85 ) {
			grade = "A";
		} else if(avg >= 80 ) {
			grade = "B+";
		} else if(avg >= 70 ) {
			grade = "C";
		} else {
			grade = "F";
		}
	%>

	<fieldset>
		<legend>����Ȯ�����α׷�</legend>
		<table style="margin: auto; text-align: left;">
			<tr>
				<td>�̸�</td>
				<td><%= name %></td>
			</tr>
			<tr>
				<td>Java����</td>
				<td><%= java %></td>
			</tr>
			<tr>
				<td>Web����</td>
				<td><%= web %></td>
			</tr>
			<tr>
				<td>IoT����</td>
				<td><%= iot %></td>
			</tr>    
			<tr>
				<td>Android����</td>
				<td><%= android %></td>
			</tr>
			<tr>
				<td>���</td>
				<td><%= avg %></td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<h2><%= grade %></h2>
				</td>
			</tr>
		</table>
	</fieldset>

	
	
	
	
</body>
</html>