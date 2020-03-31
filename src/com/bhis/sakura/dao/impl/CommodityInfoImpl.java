package com.bhis.sakura.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bhis.sakura.db.DB;
import com.bhis.sakura.dao.ICommodityInfoDao;
import com.bhis.sakura.po.CommodityInfo;

public class CommodityInfoImpl implements ICommodityInfoDao {
	private DB db;
	
	public CommodityInfoImpl() {
		db = DB.getDB();
	}

	@Override
	public ArrayList<CommodityInfo> findCommodityByName(String commodityName,int sortMethod) {
		String sql = "select * from commodityinfo where commodityname like '%" + commodityName + "%'";
		if(sortMethod==2)
			sql += " order by commodityprice desc";
		else if(sortMethod==3)
			sql += " order by commodityprice";
		ArrayList<CommodityInfo> result = new ArrayList<CommodityInfo>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				CommodityInfo commodityInfo = new CommodityInfo();
				commodityInfo.setCommodityNumber(rs.getLong(1));
				commodityInfo.setCommodityName(rs.getString(2));
				commodityInfo.setCommoditySize(rs.getInt(3));
				commodityInfo.setCommodityUnit(rs.getString(4));
				commodityInfo.setCommodityPrice(rs.getFloat(5));
				commodityInfo.setCommodityPictureIndex(rs.getString(6));
				commodityInfo.setCommodityDetail(rs.getString(7));
				commodityInfo.setCommodityType(new CommodityTypeImpl().findCommodityType(rs.getInt(8)).get(0));
				commodityInfo.setMerchant(new MerchantImpl().findMerchant(rs.getInt(9)));
				commodityInfo.setInventory(rs.getInt(10));
				commodityInfo.setCommodityState(rs.getInt(11));
				result.add(commodityInfo);
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
	public ArrayList<CommodityInfo> FindCommodityByType(int commodityTypeID,int sortMethod) {
		String sql = "select * from commodityinfo where commoditytypeid = " + commodityTypeID + "";
		if(sortMethod==2)
			sql += " order by commodityprice desc";
		else if(sortMethod==3)
			sql += " order by commodityprice";
		ArrayList<CommodityInfo> result = new ArrayList<CommodityInfo>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				CommodityInfo commodityInfo = new CommodityInfo();
				commodityInfo.setCommodityNumber(rs.getLong(1));
				commodityInfo.setCommodityName(rs.getString(2));
				commodityInfo.setCommoditySize(rs.getInt(3));
				commodityInfo.setCommodityUnit(rs.getString(4));
				commodityInfo.setCommodityPrice(rs.getFloat(5));
				commodityInfo.setCommodityPictureIndex(rs.getString(6));
				commodityInfo.setCommodityDetail(rs.getString(7));
				commodityInfo.setCommodityType(new CommodityTypeImpl().findCommodityType(rs.getInt(8)).get(0));
				commodityInfo.setMerchant(new MerchantImpl().findMerchant(rs.getInt(9)));
				commodityInfo.setInventory(rs.getInt(10));
				commodityInfo.setCommodityState(rs.getInt(11));
				result.add(commodityInfo);
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
	public ArrayList<CommodityInfo> FindCommodityByMerchant(int merchantID,int sortMethod) {
		String sql = "select * from commodityinfo where merchantid = " + merchantID + "";
		if(sortMethod==2)
			sql += " order by commodityprice desc";
		else if(sortMethod==3)
			sql += " order by commodityprice";
		ArrayList<CommodityInfo> result = new ArrayList<CommodityInfo>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				CommodityInfo commodityInfo = new CommodityInfo();
				commodityInfo.setCommodityNumber(rs.getLong(1));
				commodityInfo.setCommodityName(rs.getString(2));
				commodityInfo.setCommoditySize(rs.getInt(3));
				commodityInfo.setCommodityUnit(rs.getString(4));
				commodityInfo.setCommodityPrice(rs.getFloat(5));
				commodityInfo.setCommodityPictureIndex(rs.getString(6));
				commodityInfo.setCommodityDetail(rs.getString(7));
				commodityInfo.setCommodityType(new CommodityTypeImpl().findCommodityType(rs.getInt(8)).get(0));
				commodityInfo.setMerchant(new MerchantImpl().findMerchant(rs.getInt(9)));
				commodityInfo.setInventory(rs.getInt(10));
				commodityInfo.setCommodityState(rs.getInt(11));
				result.add(commodityInfo);
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
	public CommodityInfo getCommodityInfo(long commodityNumber) {
		String sql = "select * from commodityinfo where commodityNumber = " + commodityNumber + "";
		ResultSet rs = this.db.query(sql);
		try {
			if(rs.next()){
				CommodityInfo commodityInfo = new CommodityInfo();
				commodityInfo.setCommodityNumber(rs.getLong(1));
				commodityInfo.setCommodityName(rs.getString(2));
				commodityInfo.setCommoditySize(rs.getInt(3));
				commodityInfo.setCommodityUnit(rs.getString(4));
				commodityInfo.setCommodityPrice(rs.getFloat(5));
				commodityInfo.setCommodityPictureIndex(rs.getString(6));
				commodityInfo.setCommodityDetail(rs.getString(7));
				commodityInfo.setCommodityType(new CommodityTypeImpl().findCommodityType(rs.getInt(8)).get(0));
				commodityInfo.setMerchant(new MerchantImpl().findMerchant(rs.getInt(9)));
				commodityInfo.setInventory(rs.getInt(10));
				commodityInfo.setCommodityState(rs.getInt(11));
				return commodityInfo;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean addCommodityInfo(CommodityInfo commodityInfo) {
		String sql = "insert into commodityinfo values(null,'" + commodityInfo.getCommodityName() + 
				"'," + commodityInfo.getCommoditySize() + 
				"," + commodityInfo.getCommodityUnit() + 
				"," + commodityInfo.getCommodityPrice() + 
				",'" + commodityInfo.getCommodityPictureIndex() + 
				"','" + commodityInfo.getCommodityDetail() + 
				"'," + commodityInfo.getCommodityType().getCommodityTypeID() + 
				"," + commodityInfo.getMerchant().getMerchantID() + 
				"," + commodityInfo.getInventory() + ",0)";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean deleteCommodityInfo(int commodityNumber) {
		String sql = "select commoditypictureindex from commodityinfo where commoditynumber = " + commodityNumber + "";
		ResultSet rs = this.db.query(sql);
		try {
			if(rs.next()){
				//É¾³ýÕÕÆ¬
				
				sql = "delete from commodityinfo where commoditynumber = " + commodityNumber + "";
				return this.db.update(sql)==1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean alterCommodityInfo(CommodityInfo commodityInfo) {
		String sql = "update commodityinfo set commodityname = '" + commodityInfo.getCommodityName() + 
				"',commoditysize = " + commodityInfo.getCommoditySize() + 
				",commodityunit = " + commodityInfo.getCommodityUnit() + 
				",commodityprice = " + commodityInfo.getCommodityPrice() +
				",commoditypictureindex = '" + commodityInfo.getCommodityPictureIndex() + 
				"',commoditydetail = '" + commodityInfo.getCommodityDetail() + 
				"',commoditytypeid = " + commodityInfo.getCommodityType().getCommodityTypeID() + 
				",merchantid = " +commodityInfo.getMerchant().getMerchantID() + 
				" where commoditynumber = " + commodityInfo.getCommodityNumber() + "";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean alterCommodityInventory(CommodityInfo commodityInfo) {
		String sql = "update commodityinfo set inventory = " +commodityInfo.getInventory() + 
				" where commoditynumber = " + commodityInfo.getCommodityNumber() + "";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean changeCommodityState(CommodityInfo commodityInfo) {
		String sql = "update commodityinfo set commoditystate = " + commodityInfo.getCommodityState() + 
				" where commoditynumber = " + commodityInfo.getCommodityNumber() + "";
		return this.db.update(sql)==1;
	}
	
//	public static void main(String[] str){
//		CommodityInfoImpl test = new CommodityInfoImpl();
//		System.out.println(test.deleteCommodityInfo(1));
//	}
}
