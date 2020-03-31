package com.bhis.sakura.po;

import com.bhis.sakura.po.CommodityInfo;
import com.bhis.sakura.po.User;;

public class ShoppingCart {
	private CommodityInfo commodityInfo;
	private User user;
	private int quantity;
	public ShoppingCart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShoppingCart(User user, CommodityInfo commodityInfo, int quantity) {
		super();
		this.commodityInfo = commodityInfo;
		this.user = user;
		this.quantity = quantity;
	}
	public CommodityInfo getCommodityInfo() {
		return commodityInfo;
	}
	public void setCommodityInfo(CommodityInfo commodityInfo) {
		this.commodityInfo = commodityInfo;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
