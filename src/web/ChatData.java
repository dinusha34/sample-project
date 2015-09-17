package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;

import javax.servlet.ServletContext;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class ChatData extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException {
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
		
		String uname = req.getParameter("uname");
		String reciever = req.getParameter("reciever");
		ServletContext sc = getServletContext();
		
		ArrayList<String> newChatObject = (ArrayList<String>) sc.getAttribute(reciever);
		
		for (String string : newChatObject ) {
			resp.getWriter().println(string);
			System.out.println(string);
		}

		
	}
}
