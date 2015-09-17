package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;

import javax.servlet.ServletContext;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class ChatAdmin extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException {
resp.setContentType("text/plain");
		
		String uname = req.getParameter("uname");
		String chatText = req.getParameter("chatval");
		String reciever = req.getParameter("reciever");
		ServletContext sc = getServletContext();
		

		ArrayList<String> chatObject = (ArrayList<String>) sc.getAttribute(reciever);
		
		chatObject.add("<b>"+uname+"</b> : "+chatText+"<br>");

		sc.setAttribute(reciever, chatObject);
		
		ArrayList<String> newChatObject = (ArrayList<String>) sc.getAttribute(reciever);
		
		for (String string : newChatObject ) {
			resp.getWriter().println(string);
			System.out.println(string);
		}

	}
	
	
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {
		resp.setContentType("text/plain");

		ServletContext sc = getServletContext();
		
		HashSet<String> userList = (HashSet<String>) sc.getAttribute("userList");
		ArrayList<String> chatVal;
		
		for (String nameVal : userList ) {
//			resp.getWriter().println(nameVal);
//			System.out.println(nameVal);
			
			chatVal = (ArrayList<String>) sc.getAttribute(nameVal);
			
			resp.getWriter().println("<div class='col-sm-6 col-md-3 block-margin'>");
			resp.getWriter().println("<div class='pricing-package block block-shadow white'>");
			resp.getWriter().println("<div class='block-inner'>");
			
			resp.getWriter().println("<div class='price gray-light block-shadow block-margin'>");
			resp.getWriter().println("<div class='block-inner'>");
			resp.getWriter().println(nameVal);
            resp.getWriter().println("</div>");
            resp.getWriter().println("</div>");

            resp.getWriter().println("<div class='action-button'>");
            resp.getWriter().println("<a href='#chat_popup' class='btn btn-primary' rel='leanModal' onclick=\"setUserID('"+nameVal+"')\">Chat</a>");
            resp.getWriter().println("</div>");
            resp.getWriter().println("</div>");
            resp.getWriter().println("</div>");
            resp.getWriter().println("</div>");

			
		}
		
		
	}
}
