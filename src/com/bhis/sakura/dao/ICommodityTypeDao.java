package com.bhis.sakura.dao;

import java.util.ArrayList;
import com.bhis.sakura.po.CommodityType;

public interface ICommodityTypeDao {
	public ArrayList<CommodityType> getAllCommodityType();
	public boolean addCommodityType(CommodityType commodityType);
	public boolean deleteCommodityType(int commodityTypeID);
	public boolean alterCommodityType(CommodityType commodityType);
	public ArrayList<CommodityType> findCommodityType(int commodityTypeID);
}
