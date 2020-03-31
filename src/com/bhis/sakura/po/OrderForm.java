package com.bhis.sakura.po;

import com.bhis.sakura.po.User;
import com.bhis.sakura.po.CommodityInfo;

public class OrderForm {
	private long orderNumber;
	private User user;
	private CommodityInfo commodityInfo;
	private int quantity;
	private int orderState;
	private String orderTime;
	private String receivingInfo;
	public OrderForm() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderForm(long orderNumber, User user, CommodityInfo commodityInfo, int quantity, int orderState,
			String orderTime, String receivingInfo) {
		super();
		this.orderNumber = orderNumber;
		this.user = user;
		this.commodityInfo = commodityInfo;
		this.quantity = quantity;
		this.orderState = orderState;
		this.orderTime = orderTime;
		this.receivingInfo = receivingInfo;
	}
	public long getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(long orderNumber) {
		this.orderNumber = orderNumber;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public CommodityInfo getCommodityInfo() {
		return commodityInfo;
	}
	public void setCommodityInfo(CommodityInfo commodityInfo) {
		this.commodityInfo = commodityInfo;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getOrderState() {
		return orderState;
	}
	public void setOrderState(int orderState) {
		this.orderState = orderState;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	public String getReceivingInfo() {
		return receivingInfo;
	}
	public void setReceivingInfo(String receivingInfo) {
		this.receivingInfo = receivingInfo;
	}
}
