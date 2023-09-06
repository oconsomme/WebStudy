package com.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

/**
 * Servlet implementation class JoinService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	// Post 방식 - 한글깨짐방지
    	request.setCharacterEncoding("EUC-KR");
    	
    	// 사용자가 입력한 id, pw를 가져오기
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String nick = null;
    
    	// id, pw를 이용해서 데이터베이스 조회하기
    	// 데이터가 있다면 nick데이터 가져오기
    	MemberDAO dao = new MemberDAO();
    	nick = dao.login(id ,pw);
    	// 로그인 성공시 -> loginSuccess.jsp
	    if(nick != null) {
	    	nick = URLEncoder.encode(nick,"EUC-KR");
	    	response.sendRedirect("loginSuccess.jsp?nick="+nick);
	    }
	    // 로그인 실패시 -> login.jsp
	    else response.sendRedirect("login.jsp");
    	
    	
    	
    
    
    }

}
