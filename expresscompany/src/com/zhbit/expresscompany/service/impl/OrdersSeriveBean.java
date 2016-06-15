package com.zhbit.expresscompany.service.impl;

import java.util.List;

import com.zhbit.expresscompany.dao.*;
import com.zhbit.expresscompany.domain.*;
import com.zhbit.expresscompany.service.*;

public class OrdersSeriveBean implements OrdersSerive{
	private OrdersDao ordersDao;
	public Orders addOrders(Orders orders) {
		return ordersDao.save(orders);
	}
	
	public Orders getOrdersById(int oid) {
		return ordersDao.getOrdersById(oid);
	}
	
	public  List<Orders> getAllOrders(){
		return ordersDao.query();
	}
	
	public List<Orders> getNotCompletedOrders(String uid){
		return ordersDao.getNotCompletedOrders(uid);
	}
	
	public List<Orders> getNotOrders(int osid){
		return ordersDao.getNotOrders(osid);
	}
	
	
	public OrdersDao getOrdersDao() {
		return ordersDao;
	}
	public void setOrdersDao(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}

	public Orders update(Orders orders) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
