package com.bhis.sakura.po;

public class Administrator {
	private int administratorID;
	private String administratorPass;
	private String administratorCode;
	public Administrator() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Administrator(int administratorID, String administratorPass, String administratorCode) {
		super();
		this.administratorID = administratorID;
		this.administratorPass = administratorPass;
		this.administratorCode = administratorCode;
	}
	public int getAdministratorID() {
		return administratorID;
	}
	public void setAdministratorID(int administratorID) {
		this.administratorID = administratorID;
	}
	public String getAdministratorPass() {
		return administratorPass;
	}
	public void setAdministratorPass(String administratorPass) {
		this.administratorPass = administratorPass;
	}
	public String getAdministratorCode() {
		return administratorCode;
	}
	public void setAdministratorCode(String administratorCode) {
		this.administratorCode = administratorCode;
	}
}
