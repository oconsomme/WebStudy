package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex08Join
 */
@WebServlet("/Ex08Join")
public class Ex08Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		
		String id = request.getParameter("id");
		out.print("ID : "+id);
		out.print("<br>");
		
		String pw = request.getParameter("pw");
		// System.out.println("PW : "+pw);

		String name = request.getParameter("name");
		out.print("NAME : "+name);
		out.print("<br>");
		
		String email = request.getParameter("email");
		out.print("EMAIL : "+email);
		out.print("<br>");
		
		String tel = request.getParameter("tel");
		out.print("TEL : "+tel);
		out.print("<br>");
		
		String gender = request.getParameter("gender");
		out.print("GENDER : "+gender);
		out.print("<br>");
		
		String[] hobby = request.getParameterValues("hobby");
		out.print("HOBBY : ");
		for (int i = 0; i < hobby.length; i++) {
			out.print(hobby[i]+" ");
		}
		out.print("<br>");

		String birthday = request.getParameter("birthday");
		out.print("BIRTHDAY : "+birthday);
		out.print("<br>");
		
		String color = request.getParameter("color");
		out.print("COLOR : "+color);
		out.print("<br>");
		
		String country = request.getParameter("country");
		out.print("COUNTRY : "+country);
		out.print("<br>");
		
		String talk = request.getParameter("talk");
		out.print("TALK : "+talk);
		out.print("<br>");
		
		out.print("</body>");
		out.print("</html>");
		
		
	}

}
