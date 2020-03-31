package com.bhis.sakura.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bhis.sakura.dao.impl.CollectListImpl;
import com.bhis.sakura.dao.impl.MerchantImpl;
import com.bhis.sakura.po.CollectList;
import com.bhis.sakura.po.User;

/**
 * Servlet implementation class DeleteCollectServlet
 */
public class DeleteCollectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ȡ���ղ�");
		
		CollectList collectList = new CollectList();
		collectList.setUser((User) request.getSession().getAttribute("user"));
		collectList.setMerchant(new MerchantImpl().findMerchant(Integer.parseInt(request.getParameter("merchantID"))));
		
		if(new CollectListImpl().deleteCollect(collectList))
			request.setAttribute("hint", "ȡ���ղسɹ���");
		else
			request.setAttribute("hint", "ȡ���ղ�ʧ�ܣ�");

		request.getRequestDispatcher("hint.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
