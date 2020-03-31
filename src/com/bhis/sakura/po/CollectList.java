package com.bhis.sakura.po;

import com.bhis.sakura.po.Merchant;
import com.bhis.sakura.po.User;

public class CollectList {
	private User user;
	private Merchant merchant;
	public CollectList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CollectList(User user, Merchant merchant) {
		super();
		this.user = user;
		this.merchant = merchant;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Merchant getMerchant() {
		return merchant;
	}
	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}
}
