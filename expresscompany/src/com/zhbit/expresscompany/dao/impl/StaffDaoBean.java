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
		System.out.println("删除员工第二步");
		sessionFactory.getCurrentSession().delete(staff);
	}

	public Staff getStaffBySid(int sid) {
		// TODO Auto-generated method stub
		System.out.println("获取员工");
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

}
