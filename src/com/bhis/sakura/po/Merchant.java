package com.bhis.sakura.po;

public class Merchant {
	private int merchantID;
	private String merchantPass;
	private String vendorName;
	private String principal;
	private String merchantNumber;
	private int merchantState;
	
	public Merchant() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Merchant(int merchantID, String merchantPass, String vendorName, String principal, String merchantNumber,
			int merchantState) {
		super();
		this.merchantID = merchantID;
		this.merchantPass = merchantPass;
		this.vendorName = vendorName;
		this.principal = principal;
		this.merchantNumber = merchantNumber;
		this.merchantState = merchantState;
	}

	public int getMerchantID() {
		return merchantID;
	}

	public void setMerchantID(int merchantID) {
		this.merchantID = merchantID;
	}

	public String getMerchantPass() {
		return merchantPass;
	}

	public void setMerchantPass(String merchantPass) {
		this.merchantPass = merchantPass;
	}

	public String getVendorName() {
		return vendorName;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}

	public String getPrincipal() {
		return principal;
	}

	public void setPrincipal(String principal) {
		this.principal = principal;
	}

	public String getMerchantNumber() {
		return merchantNumber;
	}

	public void setMerchantNumber(String merchantNumber) {
		this.merchantNumber = merchantNumber;
	}

	public int getMerchantState() {
		return merchantState;
	}

	public void setMerchantState(int merchantState) {
		this.merchantState = merchantState;
	}
	
	
}
