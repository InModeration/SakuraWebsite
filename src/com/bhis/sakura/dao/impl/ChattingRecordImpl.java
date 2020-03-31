package com.bhis.sakura.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bhis.sakura.db.DB;

import com.bhis.sakura.dao.IChattingRecordDao;
import com.bhis.sakura.po.ChattingRecord;
import com.bhis.sakura.po.Merchant;
import com.bhis.sakura.po.User;

public class ChattingRecordImpl implements IChattingRecordDao {
	private DB db;
	
	public ChattingRecordImpl() {
		db = DB.getDB();
	}

	@Override
	public ArrayList<ChattingRecord> getRecordList(User user) {
		String sql = "select * from chattingrecord where userid = " + user.getUserID() + "";
		ArrayList<ChattingRecord> result = new ArrayList<ChattingRecord>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				ChattingRecord chattingRecord = new ChattingRecord();
				chattingRecord.setUser(new UserImpl().findUser(rs.getInt(1)));
				chattingRecord.setMerchant(new MerchantImpl().findMerchant(rs.getInt(2)));
				chattingRecord.setChattingContent(rs.getString(3));
				result.add(chattingRecord);
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
	public ArrayList<ChattingRecord> getRecordList(Merchant merchant) {
		String sql = "select * from chattingrecord where merchantid = " + merchant.getMerchantID() + "";
		ArrayList<ChattingRecord> result = new ArrayList<ChattingRecord>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				ChattingRecord chattingRecord = new ChattingRecord();
				chattingRecord.setUser(new UserImpl().findUser(rs.getInt(1)));
				chattingRecord.setMerchant(new MerchantImpl().findMerchant(rs.getInt(2)));
				chattingRecord.setChattingContent(rs.getString(3));
				result.add(chattingRecord);
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
	public String findRecord(ChattingRecord chattingRecord) {
		String sql = "select chattingcontent from chattingrecord where userid = " + chattingRecord.getUser().getUserID() + " and merchantid = " + chattingRecord.getMerchant().getMerchantID() + "";
		ResultSet rs = this.db.query(sql);
		try {
			if(rs.next()){
				return rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//创建聊天记录文件
		String fileName = "" + chattingRecord.getUser().getUserID() + "_" + chattingRecord.getMerchant().getMerchantID() + ".txt";
		
		sql = "insert into chattingrecord values(" + chattingRecord.getUser().getUserID() + "," + chattingRecord.getMerchant().getMerchantID() + ",'" + fileName + "')";
		if(this.db.update(sql)==1){
			return fileName;
		}
		return null;
	}

	@Override
	public boolean deleteRecord(ChattingRecord chattingRecord) {
		String sql = "delete from chattingrecord where userid = " + chattingRecord.getUser().getUserID() + " and merchantid = " + chattingRecord.getMerchant().getMerchantID() + "";
		return this.db.update(sql)==1;
	}
	
//	public static void main(String[] str){
//		ChattingRecordImpl test = new ChattingRecordImpl();
//		System.out.println(test.deleteRecord(new ChattingRecord(new UserImpl().findUser(1),new MerchantImpl().findMerchant(1),"")));
//	}
}
