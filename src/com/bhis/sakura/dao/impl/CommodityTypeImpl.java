package com.bhis.sakura.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bhis.sakura.db.DB;
import com.bhis.sakura.dao.ICommodityTypeDao;
import com.bhis.sakura.po.CommodityType;

public class CommodityTypeImpl implements ICommodityTypeDao {
	private DB db;

	public CommodityTypeImpl() {
		db = DB.getDB();
	}

	@Override
	public ArrayList<CommodityType> getAllCommodityType() {
		String sql = "select * from commoditytype";
		ArrayList<CommodityType> result = new ArrayList<CommodityType>();
		ResultSet rs = this.db.query(sql);
		try {
			while(rs.next()){
				CommodityType commodityType = new CommodityType(rs.getInt(1),rs.getString(2),rs.getString(3));
				result.add(commodityType);
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
	public boolean addCommodityType(CommodityType commodityType) {
		String sql = "insert into commoditytype values(null,'" + commodityType.getCommodityTypeName() + "','" + commodityType.getCommodityTypeDetailTemplate() + "')";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean deleteCommodityType(int commodityTypeID) {
		String sql = "delete from commoditytype where commoditytypeid = " + commodityTypeID + "";
		return this.db.update(sql)==1;
	}

	@Override
	public boolean alterCommodityType(CommodityType commodityType) {
		String sql = "update commoditytype set commoditytypename = '" + commodityType.getCommodityTypeName() + "',commoditytypedetailtemplate = '" + commodityType.getCommodityTypeDetailTemplate() + "' where commoditytypeid = " + commodityType.getCommodityTypeID() + "";
		return this.db.update(sql)==1;
	}

	@Override
	public ArrayList<CommodityType> findCommodityType(int commodityTypeID) {
		String sql = "select * from commoditytype where commoditytypeid = " + commodityTypeID + "";
		ArrayList<CommodityType> result = new ArrayList<CommodityType>();
		ResultSet rs = this.db.query(sql);
		try {
			if(rs.next()){
				CommodityType commodityType = new CommodityType(rs.getInt(1),rs.getString(2),rs.getString(3));
				result.add(commodityType);
				return result;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
//	public static void main(String[] str){
//		CommodityTypeImpl test = new CommodityTypeImpl();
//		System.out.println(test.deleteCommodityType(1));
//	}
}
