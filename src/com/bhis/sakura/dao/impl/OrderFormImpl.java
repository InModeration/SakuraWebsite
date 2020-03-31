package com.bhis.sakura.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bhis.sakura.db.DB;
import com.bhis.sakura.dao.IOrderFormDao;
import com.bhis.sakura.po.OrderForm;

public class OrderFormImpl implements IOrderFormDao {
	private DB db;

	public OrderFormImpl() {
		db = DB.getDB();
	}

	@Override
	public ArrayList<OrderForm> findOrderFormByUser(int userID) {
		String sql = "select * from orderform where userid = " + userID + " order by ordertime desc";
		ArrayList<OrderForm> result = new ArrayList<OrderForm>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				OrderForm orderForm = new OrderForm();
				orderForm.setOrderNumber(rs.getLong(1));
				orderForm.setUser(new UserImpl().findUser(userID));
				orderForm.setCommodityInfo(new CommodityInfoImpl().getCommodityInfo(rs.getLong(3)));
				orderForm.setQuantity(rs.getInt(4));
				orderForm.setOrderState(rs.getInt(5));
				orderForm.setOrderTime(rs.getString(6));
				orderForm.setReceivingInfo(rs.getString(7));
				result.add(orderForm);
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
	public ArrayList<OrderForm> findOrderFormByMerchant(int merchantID) {
		String sql = "select * from orderform where commoditynumber in (select commoditynumber from commodityinfo where merchantid = " + merchantID + ") order by ordertime desc";
		ArrayList<OrderForm> result = new ArrayList<OrderForm>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				OrderForm orderForm = new OrderForm();
				orderForm.setOrderNumber(rs.getLong(1));
				orderForm.setUser(new UserImpl().findUser(rs.getInt(2)));
				orderForm.setCommodityInfo(new CommodityInfoImpl().getCommodityInfo(rs.getLong(3)));
				orderForm.setQuantity(rs.getInt(4));
				orderForm.setOrderState(rs.getInt(5));
				orderForm.setOrderTime(rs.getString(6));
				orderForm.setReceivingInfo(rs.getString(7));
				result.add(orderForm);
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
	public ArrayList<OrderForm> findOrderFormByCommodity(long commodityNumber) {
		String sql = "select * from orderform where commoditynumber = " + commodityNumber + " order by ordertime desc";
		ArrayList<OrderForm> result = new ArrayList<OrderForm>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				OrderForm orderForm = new OrderForm();
				orderForm.setOrderNumber(rs.getLong(1));
				orderForm.setUser(new UserImpl().findUser(rs.getInt(2)));
				orderForm.setCommodityInfo(new CommodityInfoImpl().getCommodityInfo(rs.getLong(3)));
				orderForm.setQuantity(rs.getInt(4));
				orderForm.setOrderState(rs.getInt(5));
				orderForm.setOrderTime(rs.getString(6));
				orderForm.setReceivingInfo(rs.getString(7));
				result.add(orderForm);
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
	public boolean addOrderForm(OrderForm orderForm) {
		String sql = "insert into orderform values(null," + orderForm.getUser().getUserID() + 
				"," + orderForm.getCommodityInfo().getCommodityNumber() + 
				"," + orderForm.getQuantity() + 
				"," + orderForm.getOrderState() + 
				",'" + orderForm.getOrderTime() + 
				"','" + orderForm.getReceivingInfo() + "')";
		return this.db.update(sql)==1;
	}

	@Override
	public OrderForm getOrderForm(long orderNumber) {
		String sql = "select * from orderform where ordernumber = " + orderNumber + "";
		ResultSet rs = this.db.query(sql);
		try {
			if(rs.next()){
				OrderForm orderForm = new OrderForm();
				orderForm.setOrderNumber(rs.getLong(1));
				orderForm.setUser(new UserImpl().findUser(rs.getInt(2)));
				orderForm.setCommodityInfo(new CommodityInfoImpl().getCommodityInfo(rs.getLong(3)));
				orderForm.setQuantity(rs.getInt(4));
				orderForm.setOrderState(rs.getInt(5));
				orderForm.setOrderTime(rs.getString(6));
				orderForm.setReceivingInfo(rs.getString(7));
				return orderForm;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean changeOrderFormState(OrderForm orderForm) {
		String sql = "update orderform set orderstate = " + orderForm.getOrderState() + " where ordernumber = " + orderForm.getOrderNumber() + "";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean changeOrderFormReceivingInfo(OrderForm orderForm) {
		String sql = "update orderform set receivinginfo = '" + orderForm.getReceivingInfo() + "' where ordernumber = " + orderForm.getOrderNumber() + "";
		return this.db.update(sql)==1;
	}
	
//	public static void main(String[] str){
//		OrderFormImpl test = new OrderFormImpl();
//		System.out.println(test.getOrderForm(1));
//	}
}
