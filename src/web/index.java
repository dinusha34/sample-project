package web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class index extends HttpServlet {

	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
	
		RequestDispatcher dispatcher;
		dispatcher=getServletContext().getRequestDispatcher("/index.jsp");
	}
	
}
