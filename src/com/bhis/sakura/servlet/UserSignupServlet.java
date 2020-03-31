package com.bhis.sakura.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bhis.sakura.dao.impl.UserImpl;
import com.bhis.sakura.po.User;

/**
 * Servlet implementation class UserSignupServlet
 */
public class UserSignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * complement the sign up operation
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String pnumber = request.getParameter("pnumber");
		String username = request.getParameter("username");
		String nickname = request.getParameter("nickname");
		String password = request.getParameter("password");
		String age = request.getParameter("age");
		// 0-male 1-female
		String sex = request.getParameter("sex");

		User user = new User(0,pnumber,password,username,Integer.parseInt(sex),Integer.parseInt(age),nickname,0,0);
		
		if (new UserImpl().addUser(user))
			request.setAttribute("hint", "注册成功！");
		else
			request.setAttribute("hint", "注册失败！该手机号已被注册");

		request.getRequestDispatcher("hint.jsp").forward(request, response);
	}

}
