package web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

	private static final long serialVersionUID = 1L;
	public Login(){
		
	}
	
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
		
		RequestDispatcher dispatcher;
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		if (LoggedUser.loginUser(email, password)){
			System.out.println("success");
			
			if(email.equals("admin@gmail.com")){
				resp.getWriter().println("<script type=\"text/JavaScript\">");  
				resp.getWriter().println("alert(\"You are logging as admin\")");  
				resp.getWriter().println("</script>");
				dispatcher=getServletContext().getRequestDispatcher("/admin_chat.jsp");
			}else{
				resp.getWriter().println("<script type=\"text/JavaScript\">");  
				resp.getWriter().println("alert(\"You are logging as"+email+"\")");  
				resp.getWriter().println("</script>");
				dispatcher=getServletContext().getRequestDispatcher("/index.jsp");
			}
			
			HttpSession session = req.getSession();
			session.setAttribute("userEmail", email);
			dispatcher.forward(req, resp);
		}
		else
		{
			System.out.println("failed");
			resp.getWriter().println("<script type=\"text/JavaScript\">");  
			resp.getWriter().println("alert(\"Login Failed\")");  
			resp.getWriter().println("</script>");
			dispatcher=getServletContext().getRequestDispatcher("/index.jsp");
			dispatcher.forward(req, resp);
		}
	}
}

