<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ex11start</title>
<style>
	* {
		text-align: center;
		margin: auto;
		padding: auto;
		margin-top: 5px;
	}
</style>
</head>
<body>
	<div>
		<h2>랜덤당첨게임</h2>
		
		<fieldset>
			<legend>랜덤숫자입력</legend>
			<form action="ex11createInput.jsp" method="post">
				<input type="number" name="num"> <br>
				<input type="submit" value="생성하기">
			</form>
		</fieldset>
	</div>
</body>
</html>