package com.bhis.sakura.dao;

import java.util.ArrayList;
import com.bhis.sakura.po.OrderForm;

public interface IOrderFormDao {
	public ArrayList<OrderForm> findOrderFormByUser(int userID);
	public ArrayList<OrderForm> findOrderFormByMerchant(int merchantID);
	public ArrayList<OrderForm> findOrderFormByCommodity(long commodityNumber);
	public boolean addOrderForm(OrderForm orderForm);
	public OrderForm getOrderForm(long orderNumber);
	public boolean changeOrderFormState(OrderForm orderForm);
	public boolean changeOrderFormReceivingInfo(OrderForm orderForm);
}
