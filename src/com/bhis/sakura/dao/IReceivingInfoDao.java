package com.bhis.sakura.dao;

import java.util.ArrayList;
import com.bhis.sakura.po.ReceivingInfo;

public interface IReceivingInfoDao {
	public ArrayList<ReceivingInfo> findAllReceivingInfo(int userID);
	public ReceivingInfo getRecevingInfo(ReceivingInfo receivingInfo);
	public boolean addReceivingInfo(ReceivingInfo receivingInfo);
	public boolean alterReceivingInfo(ReceivingInfo receivingInfo);
	public boolean deleteReceivingInfo(ReceivingInfo receivingInfo);
}
