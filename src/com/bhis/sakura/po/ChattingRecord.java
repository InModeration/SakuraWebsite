package com.bhis.sakura.po;

import com.bhis.sakura.po.Merchant;
import com.bhis.sakura.po.User;

public class ChattingRecord {
	private User user;
	private Merchant merchant;
	private String chattingContent;
	public ChattingRecord() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChattingRecord(User user, Merchant merchant, String chattingContent) {
		super();
		this.user = user;
		this.merchant = merchant;
		this.chattingContent = chattingContent;
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
	public String getChattingContent() {
		return chattingContent;
	}
	public void setChattingContent(String chattingContent) {
		this.chattingContent = chattingContent;
	}
}
