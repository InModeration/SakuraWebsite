package com.bhis.sakura.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bhis.sakura.db.DB;
import com.bhis.sakura.dao.ICommentOnCommodityDao;
import com.bhis.sakura.po.CommentOnCommodity;
import com.bhis.sakura.po.OrderForm;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CommentOnCommodityImpl implements ICommentOnCommodityDao {
	private DB db;
	
	public CommentOnCommodityImpl() {
		db = DB.getDB();
	}

	@Override
	public ArrayList<CommentOnCommodity> getCommentedList(int userID) {
		String sql = "select ordernumber,commentlevel,commentcontent,commenttime from commentoncommodity natural join orderform where orderstate = 4 and userid = " + userID + " order by commenttime desc";
		ArrayList<CommentOnCommodity> result = new ArrayList<CommentOnCommodity>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				CommentOnCommodity commentOnCommodity = new CommentOnCommodity();
				commentOnCommodity.setOrderForm(new OrderFormImpl().getOrderForm(rs.getLong(1)));
				commentOnCommodity.setCommentLevel(rs.getInt(2));
				commentOnCommodity.setCommentContent(rs.getString(3));
				commentOnCommodity.setCommentTime(rs.getString(4));
				result.add(commentOnCommodity);
			}
			if(!result.isEmpty()){
				return result;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public ArrayList<OrderForm> getUncommentList(int userID) {
		return null;
	}

	@Override
	public ArrayList<CommentOnCommodity> getCommentsByCommodity(long commodityNumber) {
		String sql = "select ordernumber,commentlevel,commentcontent,commenttime from commentoncommodity natural join orderform where orderstate = 4 and commoditynumber = " + commodityNumber + " order by commenttime desc";
		ArrayList<CommentOnCommodity> result = new ArrayList<CommentOnCommodity>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				CommentOnCommodity commentOnCommodity = new CommentOnCommodity();
				commentOnCommodity.setOrderForm(new OrderFormImpl().getOrderForm(rs.getLong(1)));
				commentOnCommodity.setCommentLevel(rs.getInt(2));
				commentOnCommodity.setCommentContent(rs.getString(3));
				commentOnCommodity.setCommentTime(rs.getString(4));
				result.add(commentOnCommodity);
			}
			if(!result.isEmpty()){
				return result;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public ArrayList<CommentOnCommodity> getCommentsByMerchant(int merchantID) {
		String sql = "select ordernumber,commentlevel,commentcontent,commenttime from commentoncommodity natural join orderform natural join commodityinfo where orderstate = 4 and merchantID = " + merchantID + " order by commenttime desc";
		ArrayList<CommentOnCommodity> result = new ArrayList<CommentOnCommodity>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				CommentOnCommodity commentOnCommodity = new CommentOnCommodity();
				commentOnCommodity.setOrderForm(new OrderFormImpl().getOrderForm(rs.getLong(1)));
				commentOnCommodity.setCommentLevel(rs.getInt(2));
				commentOnCommodity.setCommentContent(rs.getString(3));
				commentOnCommodity.setCommentTime(rs.getString(4));
				result.add(commentOnCommodity);
			}
			if(!result.isEmpty()){
				return result;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean addComment(CommentOnCommodity commentOnCommodity) {
		String sql = "insert into commentoncommodity values(" + commentOnCommodity.getOrderForm().getOrderNumber() + 
				"," + commentOnCommodity.getCommentLevel() + 
				",'" + commentOnCommodity.getCommentContent() + 
				"','" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()) + "')";
		if(this.db.update(sql)==1){
			new OrderFormImpl().changeOrderFormState(new OrderForm(commentOnCommodity.getOrderForm().getOrderNumber(),null,null,0,4,"",""));
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteComment(long orderNumber) {
		String sql = "delete from commentoncommodity where ordernumber = " + orderNumber + "";
		return this.db.update(sql)==1;
	}

	@Override
	public int getCommentCount(long commodityNumber) {
		String sql = "select count(ordernumber) from commentoncommodity natural join orderform where orderstate = 4 and commoditynumber = " + commodityNumber + "";
		try {
			return this.db.query(sql).getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
//	public static void main(String[] str){
//		CommentOnCommodityImpl test = new CommentOnCommodityImpl();
//		System.out.println(test.deleteComment(1));
//	}
}
