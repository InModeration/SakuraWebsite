package com.bhis.sakura.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bhis.sakura.db.DB;
import com.bhis.sakura.dao.IUserDao;
import com.bhis.sakura.po.User;

public class UserImpl implements IUserDao {

	private DB db;
	
	public UserImpl() {
		db = DB.getDB();
	}

	@Override
	public ArrayList<User> findAllUser() {
		String sql = "select * from user";
		ResultSet rs = db.query(sql);
		ArrayList<User> result = new ArrayList<User>();
		try {
			while(rs.next()){
				User user = new User();
				user.setUserID(rs.getInt(1));
				user.setBindingNumber(rs.getString(2));
				user.setUserName(rs.getString(4));
				user.setSex(rs.getInt(5));
				user.setAge(rs.getInt(6));
				user.setNickname(rs.getString(7));
				user.setUserState(rs.getInt(8));
				user.setPoints(rs.getInt(9));
				result.add(user);
			}
			if(!result.isEmpty()){
				return result;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public User login(User user) {
		String sql = "select * from user where bindingnumber = '" + user.getBindingNumber() + "' and userpass = '" + user.getUserPass() + "'";
		ResultSet rs = db.query(sql);
		try {
			if(rs.next()){
				user.setUserID(rs.getInt(1));
				user.setUserName(rs.getString(4));
				user.setSex(rs.getInt(5));
				user.setAge(rs.getInt(6));
				user.setNickname(rs.getString(7));
				user.setUserState(rs.getInt(8));
				user.setPoints(rs.getInt(9));
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean changeUserInfo(User user) {
		String sql = "update user set bindingnumber = '" + user.getBindingNumber() + 
				"',username = '" + user.getUserName() +
				"',sex = " + user.getSex() + 
				",age = " + user.getAge() + 
				",nickname = '" + user.getNickname() + 
				"' where userid = " + user.getUserID() + "";
		return db.update(sql)==1;
	}

	@Override
	public boolean changeUserPass(String oldPass,User user) {
		try {
			if(!this.db.query("select * from user where userid = " + user.getUserID() + " and userpass = '" + oldPass + "'").next()){
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
		String sql = "update user set userpass = '" + user.getUserPass() + "' where userid = " + user.getUserID() + "";
		return db.update(sql)==1;
	}

	@Override
	public boolean changeUserPoints(User user) {
		String sql = "update user set points = " + user.getPoints() + " where userid = " + user.getUserID() + "";
		return db.update(sql)==1;
	}

	@Override
	public boolean changeUserState(User user) {
		String sql = "update user set userstate = " + user.getUserState() + " where userid = " + user.getUserID() + "";
		return db.update(sql)==1;
	}

	@Override
	public boolean addUser(User user) {
		String sql = "insert into user values(null,'" + user.getBindingNumber() + 
				"','" + user.getUserPass() + 
				"','" + user.getUserName() + 
				"'," + user.getSex() + 
				"," + user.getAge() + 
				",'" + user.getNickname() + 
				"',0,0)";
		return db.update(sql)==1;
	}

	@Override
	public boolean deleteUser(int userid) {
		String sql = "delete from user where userid = " + userid + "";
		return db.update(sql)==1;
	}

	@Override
	public User findUser(int userID) {
		String sql = "select * from user where userid = " + userID + "";
		ResultSet rs = db.query(sql);
		try {
			if(rs.next()){
				User user = new User();
				user.setUserID(rs.getInt(1));
				user.setBindingNumber(rs.getString(2));
				user.setUserName(rs.getString(4));
				user.setSex(rs.getInt(5));
				user.setAge(rs.getInt(6));
				user.setNickname(rs.getString(7));
				user.setUserState(rs.getInt(8));
				user.setPoints(rs.getInt(9));
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
//	public static void main(String[] str){
//		UserImpl test = new UserImpl();
//		System.out.println(test.changeUserPass("1", new User(1,"","456","",0,0,"",0,0)));
//	}
}
