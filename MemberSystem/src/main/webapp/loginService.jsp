<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		ID, PW 두 개의 정보를 받아와서
		로그인을 한 다음
		로그인 성공한 사람의 닉네임 콘솔에 출력		
	 --%>
	 <%
		 request.setCharacterEncoding("EUC-KR");
	     
	     String id = request.getParameter("id");
	     String pw = request.getParameter("pw");
	     String nick = null;
	     
	  	  // JDBC 순서
	      // 0.드라이버 파일 프로젝트에 넣기
	      // 1.드라이버 동적로딩
	      Class.forName("oracle.jdbc.driver.OracleDriver");
	      
	      // 2.커넥션 연결
	      String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	      String db_id = "shopping";
	      String db_pw = "12345";
	      
	      Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	      // 3.SQL문 실행
	      String sql = "SELECT * FROM MEMBER WHERE(ID = ? AND PW = ?)";
	      PreparedStatement psmt = conn.prepareStatement(sql);
	      
	      psmt.setString(1, id);
	      psmt.setString(2, pw);
	      
	      // psmt.executeUpdate();
	      
	      ResultSet rs = psmt.executeQuery();
	      
	      if (rs.next()){
				// 로그인 성공
				String login_id = rs.getString("ID");
				String login_pw = rs.getString("PW");
				String login_nick = rs.getString("NICK");
				
				nick = rs.getString("NICK");
			}
	      
	      // 4.연결종료
	      
	      if(rs != null){
	    	  rs.close();
	      }
	      if(psmt != null){
	         psmt.close();
	      }
	      if(conn != null){
	         conn.close();
	      }
	      
	      // 로그인 성공시 -> loginSuccess.jsp
	      if(nick != null) {
	    	  nick = URLEncoder.encode(nick,"EUC-KR");
	    	  response.sendRedirect("loginSuccess.jsp?nick="+nick);
	      }
	      // 로그인 실패시 -> login.jsp
	      else response.sendRedirect("login.jsp");
	 
	 %>
</body>
</html>