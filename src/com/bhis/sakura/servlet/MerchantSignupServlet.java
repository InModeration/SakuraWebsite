package com.bhis.sakura.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bhis.sakura.dao.impl.MerchantImpl;
import com.bhis.sakura.po.Merchant;

/**
 * Servlet implementation class MerchantSignupServlet
 */
public class MerchantSignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String vendorname = request.getParameter("vendorname");
		String principal = request.getParameter("principal");
		String password = request.getParameter("password");
		String mnumber = request.getParameter("mnumber");
		System.out.println(vendorname + " " + principal + " " + 
				mnumber + " " + password);
		Merchant merchant = new Merchant(0, password, vendorname, principal, mnumber, 0);
		if (new MerchantImpl().addMerchant(merchant))
			response.sendRedirect("signupSuc.jsp");
	}

}
