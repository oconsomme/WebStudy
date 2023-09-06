<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ex11createInput</title>
<style>
	* {
		text-align: center;
		margin: auto;
		padding: auto;
		margin-top: 5px;
	}
	
	input {
		text-align: left;
	}
</style>
</head>
<body>
	<div>
		<fieldset>
			<legend>랜덤당첨 작성</legend>
			<form action="ex11result.jsp" method="post">
				주제: <input type="text" name="title"> <br>
				
				<%
				int num = Integer.parseInt(request.getParameter("num"));
				
				for(int i=1; i<=num; i++) {
					out.print("아이템"+ i +": <input type=\"text\" name=\"item\"><br>");
				}
				%>
				
				<input type="submit" value="시작">
			</form>
		</fieldset>
	</div>
</body>
</html>