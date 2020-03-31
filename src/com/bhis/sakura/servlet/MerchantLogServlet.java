package com.bhis.sakura.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bhis.sakura.dao.impl.MerchantImpl;
import com.bhis.sakura.po.Merchant;

/**
 * Servlet implementation class MerchantLogServlet
 */
public class MerchantLogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bindingnumber = request.getParameter("mid");
		String password = request.getParameter("password");
		//System.out.println(bindingnumber + "  " + password);
		Merchant merchant = new Merchant();
		merchant.setMerchantNumber(bindingnumber);
		merchant.setMerchantPass(password);
		if (new MerchantImpl().login(merchant)!=null) {
			request.getSession().setAttribute("merchant", merchant);
			if(request.getSession().getAttribute("lastPage")!=null){
				response.sendRedirect((String)request.getSession().getAttribute("lastPage"));
			}else{
				response.sendRedirect("index.jsp");
			}
		}
		else {
			//System.out.println("jumping to the wrong page");
			request.setAttribute("returnPage", "merchantLog.jsp");
			request.getRequestDispatcher("wrongPass.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
