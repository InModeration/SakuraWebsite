package com.bhis.sakura.po;

public class CommodityType {
	private int commodityTypeID;
	private String commodityTypeName;
	private String commodityTypeDetailTemplate;
	public CommodityType() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommodityType(int commodityTypeID, String commodityTypeName, String commodityTypeDetailTemplate) {
		super();
		this.commodityTypeID = commodityTypeID;
		this.commodityTypeName = commodityTypeName;
		this.commodityTypeDetailTemplate = commodityTypeDetailTemplate;
	}
	public int getCommodityTypeID() {
		return commodityTypeID;
	}
	public void setCommodityTypeID(int commodityTypeID) {
		this.commodityTypeID = commodityTypeID;
	}
	public String getCommodityTypeName() {
		return commodityTypeName;
	}
	public void setCommodityTypeName(String commodityTypeName) {
		this.commodityTypeName = commodityTypeName;
	}
	public String getCommodityTypeDetailTemplate() {
		return commodityTypeDetailTemplate;
	}
	public void setCommodityTypeDetailTemplate(String commodityTypeDetailTemplate) {
		this.commodityTypeDetailTemplate = commodityTypeDetailTemplate;
	}
	
}
