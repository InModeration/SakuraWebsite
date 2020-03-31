package com.bhis.sakura.dao;

import com.bhis.sakura.po.ChattingRecord;
import java.util.ArrayList;

import com.bhis.sakura.po.User;
import com.bhis.sakura.po.Merchant;

public interface IChattingRecordDao {
	public ArrayList<ChattingRecord> getRecordList(User user);
	public ArrayList<ChattingRecord> getRecordList(Merchant merchant);
	public String findRecord(ChattingRecord chattingRecord);
	public boolean deleteRecord(ChattingRecord chattingRecord);
}
