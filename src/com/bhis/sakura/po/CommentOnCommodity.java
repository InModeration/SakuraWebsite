package com.bhis.sakura.po;

import com.bhis.sakura.po.OrderForm;

public class CommentOnCommodity {
	private OrderForm orderForm;
	private int commentLevel;
	private String commentContent;
	private String commentTime;
	public CommentOnCommodity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommentOnCommodity(OrderForm orderForm, int commentLevel, String commentContent, String commentTime) {
		super();
		this.orderForm = orderForm;
		this.commentLevel = commentLevel;
		this.commentContent = commentContent;
		this.commentTime = commentTime;
	}
	public OrderForm getOrderForm() {
		return orderForm;
	}
	public void setOrderForm(OrderForm orderForm) {
		this.orderForm = orderForm;
	}
	public int getCommentLevel() {
		return commentLevel;
	}
	public void setCommentLevel(int commentLevel) {
		this.commentLevel = commentLevel;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}
}
