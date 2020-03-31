package com.bhis.sakura.po;

import com.bhis.sakura.po.User;;

public class ReceivingInfo {
	private int receivingInfoNumber;
	private User user;
	private String consignee;
	private String receivingNumber;
	private String receivingAddress;
	public ReceivingInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReceivingInfo(int receivingInfoNumber, User user, String consignee, String receivingNumber,
			String receivingAddress) {
		super();
		this.receivingInfoNumber = receivingInfoNumber;
		this.user = user;
		this.consignee = consignee;
		this.receivingNumber = receivingNumber;
		this.receivingAddress = receivingAddress;
	}
	public int getReceivingInfoNumber() {
		return receivingInfoNumber;
	}
	public void setReceivingInfoNumber(int receivingInfoNumber) {
		this.receivingInfoNumber = receivingInfoNumber;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getConsignee() {
		return consignee;
	}
	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
	public String getReceivingNumber() {
		return receivingNumber;
	}
	public void setReceivingNumber(String receivingNumber) {
		this.receivingNumber = receivingNumber;
	}
	public String getReceivingAddress() {
		return receivingAddress;
	}
	public void setReceivingAddress(String receivingAddress) {
		this.receivingAddress = receivingAddress;
	}
}
