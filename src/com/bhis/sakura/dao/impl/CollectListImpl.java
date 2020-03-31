package com.bhis.sakura.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bhis.sakura.db.DB;

import com.bhis.sakura.dao.ICollectListDao;
import com.bhis.sakura.po.CollectList;

public class CollectListImpl implements ICollectListDao {
	private DB db;

	public CollectListImpl() {
		db = DB.getDB();
	}

	@Override
	public ArrayList<CollectList> getCollectList(int userID) {
		String sql = "select merchantid from collectlist where userid = " + userID + "";
		ArrayList<CollectList> result = new ArrayList<CollectList>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				CollectList collectList = new CollectList();
				collectList.setUser(new UserImpl().findUser(userID));
				collectList.setMerchant(new MerchantImpl().findMerchant(rs.getInt(1)));
				result.add(collectList);
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
	public int getCollectCount(int merchantID) {
		String sql = "select count(userid) from collectlist where merchantid = " + merchantID + "";
		ResultSet rs = this.db.query(sql);
		try {
			if(rs.next()){
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	@Override
	public boolean findCollect(CollectList collectList) {
		String sql = "select * from collectlist where userid = " + collectList.getUser().getUserID() + " and merchantid = " + collectList.getMerchant().getMerchantID() + "";
		try {
			return this.db.query(sql).next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean addCollect(CollectList collectList) {
		String sql = "insert into collectlist values(" + collectList.getUser().getUserID() + "," + collectList.getMerchant().getMerchantID() + ")";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean deleteCollect(CollectList collectList) {
		String sql = "delete from collectlist where userid = " + collectList.getUser().getUserID() + " and merchantid = " + collectList.getMerchant().getMerchantID() + "";
		return this.db.update(sql)==1;
	}
	
//	public static void main(String[] str){
//		CollectListImpl test = new CollectListImpl();
//		System.out.println(test.deleteCollect(new CollectList(new UserImpl().findUser(1),new MerchantImpl().findMerchant(1))));
//	}
}
