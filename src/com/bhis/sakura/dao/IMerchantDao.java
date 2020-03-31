package com.bhis.sakura.dao;

import java.util.ArrayList;
import com.bhis.sakura.po.Merchant;

public interface IMerchantDao {
	public ArrayList<Merchant> getAllMerchant();
	public Merchant login(Merchant merchant);
	public Merchant findMerchant(int merchantID);
	public boolean addMerchant(Merchant merchant);
	public boolean deleteMerchant(int merchantID);
	public boolean changeMerchantName(Merchant merchant);
	public boolean changeMerchantPass(String oldPass,Merchant merchant);
	public boolean changeMerchantNumber(Merchant merchant);
	public boolean changeMerchantState(Merchant merchant);
	public boolean changeMerchantPrincipal(Merchant merchant);
	public boolean changeMerchantInfo(Merchant merchant);
}
