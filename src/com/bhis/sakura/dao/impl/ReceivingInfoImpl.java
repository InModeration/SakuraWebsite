package com.bhis.sakura.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bhis.sakura.db.DB;
import com.bhis.sakura.dao.IReceivingInfoDao;
import com.bhis.sakura.po.ReceivingInfo;

public class ReceivingInfoImpl implements IReceivingInfoDao {
	private DB db;

	public ReceivingInfoImpl() {
		db = DB.getDB();
	}

	@Override
	public ArrayList<ReceivingInfo> findAllReceivingInfo(int userID) {
		String sql = "select * from receivinginfo where userid = " + userID + "";
		ArrayList<ReceivingInfo> result = new ArrayList<ReceivingInfo>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				ReceivingInfo receivingInfo = new ReceivingInfo();
				receivingInfo.setReceivingInfoNumber(rs.getInt(1));
				receivingInfo.setUser(new UserImpl().findUser(rs.getInt(2)));
				receivingInfo.setConsignee(rs.getString(3));
				receivingInfo.setReceivingNumber(rs.getString(4));
				receivingInfo.setReceivingAddress(rs.getString(5));
				result.add(receivingInfo);
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
	public ReceivingInfo getRecevingInfo(ReceivingInfo receivingInfo) {
		String sql = "select * from receivinginfo where receivinginfonumber = " + receivingInfo.getReceivingInfoNumber() + " and userid = " + receivingInfo.getUser().getUserID() + "";
		ResultSet rs = this.db.query(sql);
		try {
			if(rs.next()){
				receivingInfo.setReceivingInfoNumber(rs.getInt(1));
				receivingInfo.setUser(new UserImpl().findUser(rs.getInt(2)));
				receivingInfo.setConsignee(rs.getString(3));
				receivingInfo.setReceivingNumber(rs.getString(4));
				receivingInfo.setReceivingAddress(rs.getString(5));
				return receivingInfo;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean addReceivingInfo(ReceivingInfo receivingInfo) {
		String sql = "insert into receivinginfo values(null," + receivingInfo.getUser().getUserID() + 
				",'" + receivingInfo.getConsignee() + 
				"','" + receivingInfo.getReceivingNumber() + 
				"','" + receivingInfo.getReceivingAddress() + "')";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean alterReceivingInfo(ReceivingInfo receivingInfo) {
		String sql = "update receivinginfo set consignee = '" + receivingInfo.getConsignee() + 
				"',receivingnumber = '" + receivingInfo.getReceivingNumber() + 
				"',receivingaddress = '" + receivingInfo.getReceivingAddress() + 
				"' where receivinginfonumber = " + receivingInfo.getReceivingInfoNumber() + 
				" and userid = " + receivingInfo.getUser().getUserID() + "";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean deleteReceivingInfo(ReceivingInfo receivingInfo) {
		String sql = "delete from receivinginfo where receivinginfonumber = " + receivingInfo.getReceivingInfoNumber() + " and userid = " + receivingInfo.getUser().getUserID() + "";
		return this.db.update(sql)==1;
	}
	
//	public static void main(String[] str){
//		ReceivingInfoImpl test = new ReceivingInfoImpl();
//		System.out.println(test.deleteReceivingInfo(new ReceivingInfo(1,new UserImpl().findUser(1),"","","")));
//	}
}
