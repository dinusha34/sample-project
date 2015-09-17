package web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class Logout extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {
    	
    	RequestDispatcher dispatcher;
    	
        HttpSession session = req.getSession();
        session.invalidate();
        dispatcher=getServletContext().getRequestDispatcher("/index.jsp");
		try {
			dispatcher.forward(req, resp);
		} catch (ServletException e) {

		}
    }
}