package com.bhis.sakura.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import com.bhis.sakura.dao.impl.UserImpl;
import com.bhis.sakura.po.User;

/**
 * Servlet implementation class LogServlet
 */
public class LogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bindingnumber = request.getParameter("bindingnumber");
		String password = request.getParameter("password");
		//System.out.println(bindingnumber + "  " + password);
		User user = new User();
		user.setBindingNumber(bindingnumber);
		user.setUserPass(password);
		if (new UserImpl().login(user)!=null) {
			request.getSession().setAttribute("user", user);
			if(request.getSession().getAttribute("lastPage")!=null){
				response.sendRedirect((String)request.getSession().getAttribute("lastPage"));
			}else{
				response.sendRedirect("index.jsp");
			}
		}
		else {
			//System.out.println("jumping to the wrong page");
			request.setAttribute("returnPage", "login.jsp");
			request.getRequestDispatcher("wrongPass.jsp").forward(request, response);
		}
	}
}
