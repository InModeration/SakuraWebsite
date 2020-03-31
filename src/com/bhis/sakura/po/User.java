package com.bhis.sakura.po;

public class User {
	private int userID;
	private String bindingNumber;
	private String userPass;
	private String userName;
	private int sex;
	private int age;
	private String nickname;
	private int userState;
	private int points;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(int userID, String bindingNumber, String userPass, String userName, int sex, int age, String nickname,
			int userState, int points) {
		super();
		this.userID = userID;
		this.bindingNumber = bindingNumber;
		this.userPass = userPass;
		this.userName = userName;
		this.sex = sex;
		this.age = age;
		this.nickname = nickname;
		this.userState = userState;
		this.points = points;
	}

	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getBindingNumber() {
		return bindingNumber;
	}
	public void setBindingNumber(String bindingNumber) {
		this.bindingNumber = bindingNumber;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getUserState() {
		return userState;
	}
	public void setUserState(int userState) {
		this.userState = userState;
	}
	public int getPoints() {
		return points;
	}
	public void setPoints(int points) {
		this.points = points;
	}
	
}
