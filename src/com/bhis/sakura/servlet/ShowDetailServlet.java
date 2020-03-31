package com.bhis.sakura.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bhis.sakura.dao.impl.CollectListImpl;
import com.bhis.sakura.dao.impl.CommentOnCommodityImpl;
import com.bhis.sakura.dao.impl.CommodityInfoImpl;
import com.bhis.sakura.po.CollectList;
import com.bhis.sakura.po.CommentOnCommodity;
import com.bhis.sakura.po.CommodityInfo;
import com.bhis.sakura.po.User;

/**
 * Servlet implementation class ShowDetailServlet
 */
public class ShowDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("商品详细信息");
		request.setCharacterEncoding("utf-8");
		
		String commodityNumber = request.getParameter("commodityNumber");
		
		String lastPage = "ShowDetailServlet?commodityNumber=" + commodityNumber;
		
		CommodityInfo commodityInfo = new CommodityInfoImpl().getCommodityInfo(Long.parseLong(commodityNumber));
		ArrayList<CommentOnCommodity> commentList = new CommentOnCommodityImpl().getCommentsByCommodity(Long.parseLong(commodityNumber));
		//System.out.println(request.getSession().getAttribute("user"));
		if(request.getSession().getAttribute("user")!=null){
			CollectList collectList = new CollectList();
			collectList.setUser((User) request.getSession().getAttribute("user"));
			collectList.setMerchant(commodityInfo.getMerchant());
			
			request.setAttribute("ifCollected", new CollectListImpl().findCollect(collectList));
			//System.out.println("111");
		}
		request.getSession().setAttribute("lastPage", lastPage);
		request.setAttribute("commodityInfo", commodityInfo);
		request.setAttribute("commentList", commentList);
		request.setAttribute("commentNumber", commentList!=null?commentList.size():0);
		request.getRequestDispatcher("item_detail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
