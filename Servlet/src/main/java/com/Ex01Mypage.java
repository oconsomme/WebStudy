package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex01Mypage
 */
@WebServlet("/Ex01Mypage")
public class Ex01Mypage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Hello world!!!");
		
		// 페이지를 요청한 client의 ip를 획득
		String ip = request.getRemoteAddr();
		System.out.println(ip);
		
		// 응답 객체에 인코딩 적용
		response.setCharacterEncoding("EUC-KR");
		
		// Web Page Text 및 Tag를 사용하기 위해서는 out객체 필요
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		//out.print("<h1>"+ip+"</h1>");
		out.print("<img src ='img.jpg'>");
		if (ip.equals("192.168.0.63")) {
			out.print("<h3>민초님 환영합니다~~</h3>");
		} else if (ip.equals("192.168.0.59")) {
			out.print("<h3>병관쌤 환영합니다~</h3>");
		} else if (ip.equals("192.168.0.6")) {
			out.print("<h3>미소님 환영합니다~~</h3>");
		} else {
			out.print("<h3>손님 환영합니다!!</h3>");
		}
		out.print("</body>");
		out.print("</html>");
				
		
	}

}
