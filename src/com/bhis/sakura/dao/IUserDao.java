package com.bhis.sakura.dao;

import java.util.ArrayList;
import com.bhis.sakura.po.User;

public interface IUserDao {
	public ArrayList<User> findAllUser();
	public User login(User user);
	public User findUser(int userID);
	public boolean changeUserInfo(User user);
	public boolean changeUserPass(String oldPass,User user);
	public boolean changeUserPoints(User user);
	public boolean changeUserState(User user);
	public boolean addUser(User user);
	public boolean deleteUser(int userid);
}
