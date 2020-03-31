package com.bhis.sakura.dao;

import com.bhis.sakura.po.OrderForm;
import com.bhis.sakura.po.CommentOnCommodity;
import java.util.ArrayList;

public interface ICommentOnCommodityDao {
	public ArrayList<CommentOnCommodity> getCommentedList(int userID);
	public ArrayList<OrderForm> getUncommentList(int userID);
	public ArrayList<CommentOnCommodity> getCommentsByCommodity(long commodityNumber);
	public ArrayList<CommentOnCommodity> getCommentsByMerchant(int merchantID);
	public boolean addComment(CommentOnCommodity commentOnCommodity);
	public boolean deleteComment(long orderNumber);
	public int getCommentCount(long commodityNumber);
}
