package com.bhis.sakura.dao;

import com.bhis.sakura.po.CommodityInfo;
import java.util.ArrayList;

public interface ICommodityInfoDao {
	public ArrayList<CommodityInfo> findCommodityByName(String commodityName,int sortMethod);
	public ArrayList<CommodityInfo> FindCommodityByType(int commodityTypeID,int sortMethod);
	public ArrayList<CommodityInfo> FindCommodityByMerchant(int merchantID,int sortMethod);
	public CommodityInfo getCommodityInfo(long commodityNumber);
	public boolean addCommodityInfo(CommodityInfo commodityInfo);
	public boolean deleteCommodityInfo(int commodityNumber);
	public boolean alterCommodityInfo(CommodityInfo commodityInfo);
	public boolean alterCommodityInventory(CommodityInfo commodityInfo);
	public boolean changeCommodityState(CommodityInfo commodityInfo);
}
