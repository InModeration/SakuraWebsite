package com.bhis.sakura.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bhis.sakura.db.DB;
import com.bhis.sakura.dao.IShoppingCartDao;
import com.bhis.sakura.po.ShoppingCart;

public class ShoppingCartImpl implements IShoppingCartDao {
	private DB db;

	public ShoppingCartImpl() {
		db = DB.getDB();
	}

	@Override
	public ArrayList<ShoppingCart> getShoppingCartGoods(int userID) {
		String sql = "select * from shoppingcart where userid = " + userID + "";
		ArrayList<ShoppingCart> result = new ArrayList<ShoppingCart>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				ShoppingCart shoppingCart = new ShoppingCart();
				shoppingCart.setUser(new UserImpl().findUser(rs.getInt(1)));
				shoppingCart.setCommodityInfo(new CommodityInfoImpl().getCommodityInfo(rs.getLong(2)));
				shoppingCart.setQuantity(rs.getInt(3));
				result.add(shoppingCart);
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
	public boolean addShoppingCartGood(ShoppingCart shoppingCart) {
		String sql = "insert into shoppingcart values(" + shoppingCart.getUser().getUserID() + 
				"," + shoppingCart.getCommodityInfo().getCommodityNumber() + 
				"," + shoppingCart.getQuantity() + ")";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean changeShoppingCartGoodQuantity(ShoppingCart shoppingCart) {
		String sql = "update shoppingcart set quantity = " + shoppingCart.getQuantity() + 
				" where userid = " + shoppingCart.getUser().getUserID() + 
				" and commoditynumber = " + shoppingCart.getCommodityInfo().getCommodityNumber() + "";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean deleteShppingCartGood(ShoppingCart shoppingCart) {
		String sql = "delete from shoppingcart where userid = " + shoppingCart.getUser().getUserID() + 
				" and commoditynumber = " + shoppingCart.getCommodityInfo().getCommodityNumber() + "";
		return this.db.update(sql)==1;
	}
	
//	public static void main(String[] str){
//		ShoppingCartImpl test = new ShoppingCartImpl();
//		System.out.println(test.deleteShppingCartGood(new ShoppingCart(new UserImpl().findUser(1),new CommodityInfoImpl().getCommodityInfo(1),10)));
//	}
}
