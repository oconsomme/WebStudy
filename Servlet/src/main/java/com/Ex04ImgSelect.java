package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex04ImgSelect
 */
@WebServlet("/Ex04ImgSelect")
public class Ex04ImgSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		
		String number  = request.getParameter("select");
		out.print("<html>");
		out.print("<body>");

		if (number.equals("1")) {
			out.print("<img src ='img/img1.jpg'>");
		} else if (number.equals("2")) {
			out.print("<img src ='img/img2.jpg'>");
		} else if (number.equals("3")) {
			out.print("<img src ='img/img3.jpg'>");
		} else {
			
		}
		out.print("</body>");
		out.print("</html>");
	}

}
