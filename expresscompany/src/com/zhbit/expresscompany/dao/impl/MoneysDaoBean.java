package com.zhbit.expresscompany.dao.impl;

import org.hibernate.SessionFactory;

import com.zhbit.expresscompany.dao.MoneysDao;
import com.zhbit.expresscompany.domain.Moneys;

public class MoneysDaoBean implements MoneysDao {
	private SessionFactory sessionFactory;
	public Moneys getMoneyByMid(int mid) {
		// TODO Auto-generated method stub
		return (Moneys) sessionFactory.getCurrentSession().load(Moneys.class,mid);
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
