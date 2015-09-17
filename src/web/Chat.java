package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;

import javax.servlet.ServletContext;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Chat extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException {
		resp.setContentType("text/plain");
		
		String uname = req.getParameter("uname");
		String chatText = req.getParameter("chatval");
		ServletContext sc = getServletContext();
		
		ArrayList<String> chatObject = (ArrayList<String>) sc.getAttribute(uname);
		HashSet<String> userList = (HashSet<String>) sc.getAttribute("userList");
		
		if(chatObject == null ){
			chatObject = new ArrayList<String>();
			chatObject.add("<b>"+uname+"</b> : "+chatText+"<br>");
		}else{
			chatObject.add("<b>"+uname+"</b> : "+chatText+"<br>");
		}
		
		if(userList == null ){
			userList = new HashSet<String>();
			userList.add(uname);
		}else{
			userList.add(uname);
		}
		
		sc.setAttribute("userList", userList);
		sc.setAttribute(uname, chatObject);
		
		ArrayList<String> newChatObject = (ArrayList<String>) sc.getAttribute(uname);
		
		for (String string : newChatObject ) {
			resp.getWriter().println(string);
			System.out.println(string);
		}

	}
	
	
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {
		resp.setContentType("text/plain");
		
		String uname = req.getParameter("uname");
		ServletContext sc = getServletContext();
		
		ArrayList<String> newChatObject = (ArrayList<String>) sc.getAttribute(uname);
		
		for (String string : newChatObject ) {
			resp.getWriter().println(string);
			System.out.println(string);
		}
		
		
	}
}
