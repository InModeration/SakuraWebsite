package com.bhis.sakura.dao;

import com.bhis.sakura.po.Administrator;

public interface IAdministratorDao {
	public String findAdministator(Administrator administrator);
	public boolean changePass(String oldPass,Administrator administrator);
	public boolean changeCode(Administrator administrator);
}