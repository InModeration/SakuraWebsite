package com.bhis.sakura.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bhis.sakura.dao.impl.CommodityInfoImpl;
import com.bhis.sakura.po.CommodityInfo;

/**
 * Servlet implementation class SearchByTypeServlet
 */
public class SearchByTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("∞¥’’¿‡–ÕÀ—À˜");
		request.setCharacterEncoding("utf-8");
		
		int commodityTypeID = Integer.parseInt(request.getParameter("commodityTypeID"));
		CommodityInfoImpl commodityInfoImpl = new CommodityInfoImpl();
		String lastPage = "SearchByTypeServlet?commodityTypeID=" + commodityTypeID;
		
		ArrayList<CommodityInfo> resultList = commodityInfoImpl.FindCommodityByType(commodityTypeID,Integer.parseInt(request.getParameter("sortMethod")==null?"1":request.getParameter("sortMethod")));

		request.getSession().setAttribute("lastPage", lastPage);
		request.setAttribute("resultList", resultList);
		request.getRequestDispatcher("search.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
