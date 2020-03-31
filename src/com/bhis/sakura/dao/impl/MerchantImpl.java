package com.bhis.sakura.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bhis.sakura.db.DB;
import com.bhis.sakura.dao.IMerchantDao;
import com.bhis.sakura.po.Merchant;

public class MerchantImpl implements IMerchantDao {
	private DB db;

	public MerchantImpl() {
		db = DB.getDB();
	}

	@Override
	public ArrayList<Merchant> getAllMerchant() {
		String sql = "select * from merchant";
		ArrayList<Merchant> result = new ArrayList<Merchant>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				Merchant merchant = new Merchant();
				merchant.setMerchantID(rs.getInt(1));
				merchant.setMerchantPass(rs.getString(2));
				merchant.setVendorName(rs.getString(3));
				merchant.setPrincipal(rs.getString(4));
				merchant.setMerchantNumber(rs.getString(5));
				merchant.setMerchantState(rs.getInt(6));
				result.add(merchant);
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
	public Merchant login(Merchant merchant) {
		String sql = "select * from merchant where merchantnumber = '" + merchant.getMerchantNumber() + "' and merchantpass = '" + merchant.getMerchantPass() + "'";
		ResultSet rs = this.db.query(sql);
		try {
			if(rs.next()){
				merchant.setMerchantID(rs.getInt(1));
				merchant.setVendorName(rs.getString(3));
				merchant.setPrincipal(rs.getString(4));
				merchant.setMerchantState(rs.getInt(6));
				return merchant;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean addMerchant(Merchant merchant) {
		String sql = "insert into merchant values(null,'" + merchant.getMerchantPass() + 
				"','" + merchant.getVendorName() + 
				"','" + merchant.getPrincipal() + 
				"','" + merchant.getMerchantNumber() + 
				"',0)";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean deleteMerchant(int merchantID) {
		String sql = "delete from merchant where merchantid = " + merchantID + "";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean changeMerchantName(Merchant merchant) {
		String sql = "update merchant set vendorname = '" + merchant.getVendorName() + "' where merchantid = " + merchant.getMerchantID() + "";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean changeMerchantPass(String oldPass,Merchant merchant) {
		try {
			if(!this.db.query("select * from merchant where merchantid = " + merchant.getMerchantID() + " and merchantpass = '" + oldPass + "'").next()){
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
		String sql = "update merchant set merchantpass = '" + merchant.getMerchantPass() + "' where merchantid = " + merchant.getMerchantID() + "";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean changeMerchantNumber(Merchant merchant) {
		String sql = "update merchant set merchantnumber = '" + merchant.getMerchantNumber() + "' where merchantid = " + merchant.getMerchantID() + "";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean changeMerchantState(Merchant merchant) {
		String sql = "update merchant set merchantstate = " + merchant.getMerchantState() + " where merchantid = " + merchant.getMerchantID() + "";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean changeMerchantPrincipal(Merchant merchant) {
		String sql = "update merchant set principal = '" + merchant.getPrincipal() + "' where merchantid = " + merchant.getMerchantID() + "";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean changeMerchantInfo(Merchant merchant) {
		String sql = "update merchant set vendorname = '" + merchant.getVendorName() + 
				"',principal = '" + merchant.getPrincipal() + 
				"',merchantnumber = '" + merchant.getMerchantNumber() + 
				"' where merchantid = " + merchant.getMerchantID() + "";
		return this.db.update(sql)==1;
	}

	@Override
	public Merchant findMerchant(int merchantID) {
		String sql = "select * from merchant where merchantid = " + merchantID + "";
		ResultSet rs = this.db.query(sql);
		try {
			if(rs.next()){
				Merchant merchant = new Merchant();
				merchant.setMerchantID(rs.getInt(1));
				merchant.setVendorName(rs.getString(3));
				merchant.setPrincipal(rs.getString(4));
				merchant.setMerchantNumber(rs.getString(5));
				merchant.setMerchantState(rs.getInt(6));
				return merchant;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
//	public static void main(String[] str){
//		MerchantImpl test = new MerchantImpl();
//		System.out.println(test.changeMerchantPass("1",new Merchant(1,"123","2","2","2",0)));
//	}
}
