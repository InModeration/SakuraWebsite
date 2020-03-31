package com.bhis.sakura.dao;

import java.util.ArrayList;
import com.bhis.sakura.po.ShoppingCart;

public interface IShoppingCartDao {
	public ArrayList<ShoppingCart> getShoppingCartGoods(int userID);
	public boolean addShoppingCartGood(ShoppingCart shoppingCart);
	public boolean changeShoppingCartGoodQuantity(ShoppingCart shoppingCart);
	public boolean deleteShppingCartGood(ShoppingCart shoppingCart);
}
