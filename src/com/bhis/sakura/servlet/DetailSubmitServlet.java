package com.bhis.sakura.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bhis.sakura.dao.impl.CommodityInfoImpl;
import com.bhis.sakura.dao.impl.ShoppingCartImpl;
import com.bhis.sakura.po.CommodityInfo;
import com.bhis.sakura.po.ShoppingCart;
import com.bhis.sakura.po.User;

/**
 * Servlet implementation class DetailSubmitServlet
 */
public class DetailSubmitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("��Ʒ��ش���");
		request.setCharacterEncoding("utf-8");
		
		String submitOption = request.getParameter("submit");
		long commodityNumber = Long.parseLong(request.getParameter("commodityNumber"));
		int number = Integer.parseInt(request.getParameter("number"));
		
		User user = (User)request.getSession().getAttribute("user");
		CommodityInfo commodityInfo = new CommodityInfoImpl().getCommodityInfo(commodityNumber);
		
		if (submitOption.equals("���빺�ﳵ")) {
			ShoppingCart shoppingCart = new ShoppingCart(user,commodityInfo,number);
			if(new ShoppingCartImpl().addShoppingCartGood(shoppingCart)){
				request.setAttribute("hint", "���빺�ﳵ�ɹ���");
				request.getRequestDispatcher("hint.jsp").forward(request, response);
			}else{
				request.setAttribute("hint", "���빺�ﳵʧ�ܣ�");
				request.getRequestDispatcher("hint.jsp").forward(request, response);
			}
		} else if (submitOption.equals("�����ղؼ�")) {
			request.setAttribute("hint", "�ղسɹ���");
			request.getRequestDispatcher("hint.jsp").forward(request, response);
		} else if (submitOption.equals("��������")) {
			request.setAttribute("commodityInfo", commodityInfo);
			request.setAttribute("number", number);
			request.getRequestDispatcher("makeAnOrder.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
