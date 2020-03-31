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
 * Servlet implementation class SearchByNameServlet
 */
public class SearchByNameServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("°´ÕÕÃû×ÖËÑË÷");
		request.setCharacterEncoding("utf-8");
		
		String commodityName = request.getParameter("commodityName");
		CommodityInfoImpl commodityInfoImpl = new CommodityInfoImpl();
		String lastPage = "SearchByNameServlet?commodityName=" + commodityName;
		
		//test
		//commodityName = "1";
		
		ArrayList<CommodityInfo> resultList = commodityInfoImpl.findCommodityByName(commodityName,Integer.parseInt(request.getParameter("sortMethod")==null?"1":request.getParameter("sortMethod")));

		request.getSession().setAttribute("lastPage", lastPage);
		request.setAttribute("searchContent", commodityName);
		request.setAttribute("resultList", resultList);
		request.getRequestDispatcher("search.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
