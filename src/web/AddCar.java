package web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddCar extends HttpServlet {

	private static final long serialVersionUID = 1L;

	
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
		
		RequestDispatcher dispatcher;
		String car = req.getParameter("car");
		String color = req.getParameter("color");
		String engine = req.getParameter("engine");
		String customer = (String) req.getSession().getAttribute("userEmail");

		if (CustomizedCar.addCustomizedCar(car, color, engine, customer)){
			System.out.println("success");
			resp.getWriter().println("<script type=\"text/JavaScript\">");  
			resp.getWriter().println("alert(\"Order Send\")");  
			resp.getWriter().println("</script>"); 
			dispatcher=getServletContext().getRequestDispatcher("/index.jsp");
			dispatcher.forward(req, resp);
		}
		else
		{
			resp.getWriter().println("<script type=\"text/JavaScript\">");  
			resp.getWriter().println("alert(\"Insertion Failed\")");  
			resp.getWriter().println("</script>"); 
			System.out.println("failed");
			dispatcher=getServletContext().getRequestDispatcher("/index.jsp");
			dispatcher.forward(req, resp);
		}
	}
}

