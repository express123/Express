package com.zhbit.expresscompany.dao.impl;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.zhbit.expresscompany.dao.StaffDao;
import com.zhbit.expresscompany.domain.Staff;
import com.zhbit.expresscompany.domain.User;

public class StaffDaoBean implements StaffDao {
	private SessionFactory sessionFactory;
	
	public Staff save(Staff staff) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(staff);
		return staff;
	}

	public void delect(Staff staff) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(staff);
	}

	public Staff getStaffBySid(int sid) {
		// TODO Auto-generated method stub
		return (Staff) sessionFactory.getCurrentSession().load(Staff.class, sid);
	}

    public List<Staff>  getStaffByStid(int stid){
		String hql="from Staff where stid=?";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, stid);
		return  query.list();
	}
        
         public  Staff update(Staff staff){
        	sessionFactory.getCurrentSession().update(staff);
    		return staff;
        	
        }

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Staff getBranchManager(int bid) {
		// TODO Auto-generated method stub
		String hql="from Staff where stid=3 and bid=?";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, bid);
		Staff staff=(Staff)query.list().get(0);
		return staff;
	}
   
    public List<Staff> getStaffByBid(int bid){
    	System.out.println("传入入网点ID1"+"bid");
    	String hql="from Staff where bid=?";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, bid);
		return query.list();
	}
}
