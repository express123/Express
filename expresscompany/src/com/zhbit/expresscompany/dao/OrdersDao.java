package com.zhbit.expresscompany.dao;
import com.zhbit.expresscompany.domain.*;

import java.util.List;
public interface OrdersDao {
	Orders save(Orders orders);
	Orders update(Orders order);
	void delete(Orders order);
	Orders getOrdersById(int oid);
	List<Orders> query();
	List<Orders> getNotCompletedOrders(String uid);
	List<Orders> getNotOrders(int osid);
}
