package com.bhis.sakura.po;

import com.bhis.sakura.po.CommodityType;
import com.bhis.sakura.po.Merchant;

public class CommodityInfo {
	private long commodityNumber;
	private String commodityName;
	private int commoditySize;
	private String commodityUnit;
	private float commodityPrice;
	private String commodityPictureIndex;
	private String commodityDetail;
	private CommodityType commodityType;
	private Merchant merchant;
	private int inventory;
	private int commodityState;
	public CommodityInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommodityInfo(long commodityNumber, String commodityName, int commoditySize, String commodityUnit,
			float commodityPrice, String commodityPictureIndex, String commodityDetail, CommodityType commodityType,
			Merchant merchant, int inventory, int commodityState) {
		super();
		this.commodityNumber = commodityNumber;
		this.commodityName = commodityName;
		this.commoditySize = commoditySize;
		this.commodityUnit = commodityUnit;
		this.commodityPrice = commodityPrice;
		this.commodityPictureIndex = commodityPictureIndex;
		this.commodityDetail = commodityDetail;
		this.commodityType = commodityType;
		this.merchant = merchant;
		this.inventory = inventory;
		this.commodityState = commodityState;
	}
	public long getCommodityNumber() {
		return commodityNumber;
	}
	public void setCommodityNumber(long commodityNumber) {
		this.commodityNumber = commodityNumber;
	}
	public String getCommodityName() {
		return commodityName;
	}
	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	public int getCommoditySize() {
		return commoditySize;
	}
	public void setCommoditySize(int commoditySize) {
		this.commoditySize = commoditySize;
	}
	public String getCommodityUnit() {
		return commodityUnit;
	}
	public void setCommodityUnit(String commodityUnit) {
		this.commodityUnit = commodityUnit;
	}
	public float getCommodityPrice() {
		return commodityPrice;
	}
	public void setCommodityPrice(float commodityPrice) {
		this.commodityPrice = commodityPrice;
	}
	public String getCommodityPictureIndex() {
		return commodityPictureIndex;
	}
	public void setCommodityPictureIndex(String commodityPictureIndex) {
		this.commodityPictureIndex = commodityPictureIndex;
	}
	public String getCommodityDetail() {
		return commodityDetail;
	}
	public void setCommodityDetail(String commodityDetail) {
		this.commodityDetail = commodityDetail;
	}
	public CommodityType getCommodityType() {
		return commodityType;
	}
	public void setCommodityType(CommodityType commodityType) {
		this.commodityType = commodityType;
	}
	public Merchant getMerchant() {
		return merchant;
	}
	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}
	public int getInventory() {
		return inventory;
	}
	public void setInventory(int inventory) {
		this.inventory = inventory;
	}
	public int getCommodityState() {
		return commodityState;
	}
	public void setCommodityState(int commodityState) {
		this.commodityState = commodityState;
	}
}
