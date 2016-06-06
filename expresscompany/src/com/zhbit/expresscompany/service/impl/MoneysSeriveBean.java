package com.zhbit.expresscompany.service.impl;

import com.zhbit.expresscompany.dao.MoneysDao;
import com.zhbit.expresscompany.domain.Moneys;
import com.zhbit.expresscompany.service.MoneysSerive;

public class MoneysSeriveBean implements MoneysSerive {
	private MoneysDao moneysDao;
	public Moneys getMoneyByMid(int mid) {
		// TODO Auto-generated method stub
		return moneysDao.getMoneyByMid(mid);
	}
	public MoneysDao getMoneysDao() {
		return moneysDao;
	}
	public void setMoneysDao(MoneysDao moneysDao) {
		this.moneysDao = moneysDao;
	}

}
