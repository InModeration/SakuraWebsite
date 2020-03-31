package com.bhis.sakura.dao;

import com.bhis.sakura.po.CollectList;
import java.util.ArrayList;

public interface ICollectListDao {
	public ArrayList<CollectList> getCollectList(int userID);
	public int getCollectCount(int merchantID);
	public boolean findCollect(CollectList collectList);
	public boolean addCollect(CollectList collectList);
	public boolean deleteCollect(CollectList collectList);
}
