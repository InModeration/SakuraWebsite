package com.bhis.sakura.dao.impl;

import com.bhis.sakura.dao.IAdministratorDao;
import com.bhis.sakura.po.Administrator;
import com.bhis.sakura.db.DB;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdministratorImpl implements IAdministratorDao {
	private DB db;
	
	public AdministratorImpl() {
		db = DB.getDB();
	}

	@Override
	public String findAdministator(Administrator administrator) {
		String sql = "select administratorCode from administrator where administratorid = " + administrator.getAdministratorID() + " and administratorpass = '" + administrator.getAdministratorPass() + "'";
		
		ResultSet rs = db.query(sql);
		
		try {
			if(rs.next()){
				return rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public boolean changePass(String oldPass,Administrator administrator) {
		if(this.findAdministator(new Administrator(administrator.getAdministratorID(),oldPass,"0")) == null){
			return false;
		}
		
		String sql = "update administrator set administratorpass = '" + administrator.getAdministratorPass() + "' where administratorid = " + administrator.getAdministratorID() + "";
		
		if(db.update(sql) == 1){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean changeCode(Administrator administrator) {
		String sql = "update administrator set administratorcode = '" + administrator.getAdministratorCode() + "' where administratorid = " + administrator.getAdministratorID() + "";
		
		if(db.update(sql) == 1){
			return true;
		}else{
			return false;
		}
	}
}
