package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
    	// 사용자가 입력한 id, pw를 가져오기
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	
    	session.setAttribute("id", "pw");
    	
//    	if (id != null) {
//    		id = URLEncoder.encode(id, "EUC-KR");
//    		response.sendRedirect("main.jsp?id="+id);
//    	}
//    	else response.sendRedirect("loginForm.html");
    }

}