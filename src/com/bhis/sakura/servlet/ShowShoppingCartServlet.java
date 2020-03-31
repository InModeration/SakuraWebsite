package com.bhis.sakura.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bhis.sakura.dao.impl.ShoppingCartImpl;
import com.bhis.sakura.po.ShoppingCart;
import com.bhis.sakura.po.User;

/**
 * Servlet implementation class ShowShoppingCartServlet
 */
public class ShowShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("查看购物车");
		request.setCharacterEncoding("utf-8");
		
		User user = (User)request.getSession().getAttribute("user");
		//ArrayList<ShoppingCart> ShoppingCartGoods = new ShoppingCartImpl().getShoppingCartGoods(user.getUserID());
		//test
		
		String lastPage = "ShowShoppingCartServlet";
		
		ArrayList<ShoppingCart> ShoppingCartGoods = new ShoppingCartImpl().getShoppingCartGoods(1);

		request.getSession().setAttribute("lastPage", lastPage);
		request.setAttribute("shoppingCartGoods", ShoppingCartGoods);
		request.getRequestDispatcher("car.jsp").forward(request, response);
		System.out.println("已显示");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
