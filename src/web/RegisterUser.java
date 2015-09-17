package web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


@SuppressWarnings("serial")
public class RegisterUser extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		
		RequestDispatcher dispatcher;
		boolean flag;
		
		String userName=req.getParameter("userName");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		System.out.println("Name - "+userName+" Username - "+userName+" email - "+email+" password - "+password);

		flag=LoggedUser.createorUpdateUser(userName,email,password);
		
		System.out.println("The flag value is: "+flag);
		
		if(flag)
		{
			System.out.println("success");
			resp.getWriter().println("<script type=\"text/JavaScript\">");  
			resp.getWriter().println("alert(\""+email+" is registered as new user\")");  
			resp.getWriter().println("</script>");
			dispatcher=getServletContext().getRequestDispatcher("/index.jsp");
			dispatcher.forward(req, resp);
			
		}
		
		else{
			System.out.println("failed");
			resp.getWriter().println("<script type=\"text/JavaScript\">");  
			resp.getWriter().println("alert(\"Registration Failed\")");  
			resp.getWriter().println("</script>");
			dispatcher=getServletContext().getRequestDispatcher("/index.jsp");
			dispatcher.forward(req, resp);
			
		}
		
	}
}

