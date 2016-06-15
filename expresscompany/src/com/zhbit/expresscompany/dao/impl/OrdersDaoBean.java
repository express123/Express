package com.zhbit.expresscompany.dao.impl;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.zhbit.expresscompany.dao.*;
import com.zhbit.expresscompany.domain.*;
public class OrdersDaoBean implements OrdersDao{
	private SessionFactory sessionFactory;
	public Orders save(Orders orders) {
		sessionFactory.getCurrentSession().save(orders);
		return orders;
	}
	public Orders update(Orders orders) {
		sessionFactory.getCurrentSession().update(orders);
		return orders;
	}

	public void delete(Orders orders) {
		sessionFactory.getCurrentSession().delete(orders);
	}
	
	public Orders getOrdersById(int oid) {
		return (Orders) sessionFactory.getCurrentSession().load(Orders.class, oid);
	}
	
	public List<Orders> query(){
		return sessionFactory.getCurrentSession().createQuery("from Orders").list();	
	}
	
	public List<Orders> getNotCompletedOrders(String uid){//找出该用户所有未完成的订单
		String hql1="from Orders where uid = ? and osid = 1 ";
		Query query1=sessionFactory.getCurrentSession().createQuery(hql1);
		query1.setString(0, uid);
		
		String hql2="from Orders where uid = ? and osid = 2 ";
		Query query2=sessionFactory.getCurrentSession().createQuery(hql2);
		query2.setString(0, uid);
		
		for(int i=0;i<query2.list().size();++i){
			query1.list().add(query2.list().get(i));
		}
		
		return query1.list();
	}
	
	public List<Orders> getNotOrders(int osid){//找出该状态下的订单
		String hql="from Orders where osid = ? ";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, osid);
		return query.list();
	}
	
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
}
