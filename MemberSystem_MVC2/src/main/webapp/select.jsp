<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
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
	

		MemberDAO dao = new MemberDAO();
			
		ArrayList<MemberDTO> list = dao.select();
		
		System.out.println("현재 회원 수 : "+list.size());
	%>
	<table border = '1'>
		<tr>
			<th>list</th>
			<th>ID</th>
			<th>NICK</th>
			<th>EMAIL</th>
			<th>PHONE</th>
			<th>GENDER</th>
			<th>AGE</th>
		</tr>
		<!-- 내가 가진 list 크기만큼 반복을 돌면서 회원의 정보를 출력 -->
		<%

		    for (int i = 0; i < list.size(); i++){
		    	out.print("<tr>");
		    	out.print("<td>"+(i+1)+"</td>");
		    	out.print("<td>"+list.get(i).getId()+"</td>");
		    	out.print("<td>"+list.get(i).getNick()+"</td>");
		    	out.print("<td>"+list.get(i).getEmail()+"</td>");
		    	out.print("<td>"+list.get(i).getPhone()+"</td>");
		    	out.print("<td>"+list.get(i).getGender()+"</td>");
		    	out.print("<td>"+list.get(i).getAge()+"</td>");
		    	out.print("</tr>");
			}
		
		%>
	
	</table>

</body>
</html>