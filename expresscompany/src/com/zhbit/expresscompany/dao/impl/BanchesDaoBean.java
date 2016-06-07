package com.zhbit.expresscompany.dao.impl;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.zhbit.expresscompany.dao.BanchesDao;
import com.zhbit.expresscompany.domain.Banches;
public class BanchesDaoBean implements BanchesDao{
	
	private SessionFactory sessionFactory;
	
	public Banches save(Banches banches) {
		sessionFactory.getCurrentSession().save(banches);
		return banches;
	}

	public Banches update(Banches banches) {
		sessionFactory.getCurrentSession().update(banches);
		return banches;
	}

	public void delete(Banches banches) {
		sessionFactory.getCurrentSession().delete(banches);
	}
    
	public Banches getBanchesById(int bid) {
		return (Banches) sessionFactory.getCurrentSession().load(Banches.class, bid);
	}

	public List<Banches> query() {
		return sessionFactory.getCurrentSession().createQuery("from Banches").list();
	}
        
    public List<Banches> notUseBanches(List list){
    	System.out.println("Êä³ö2£º¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª"+list.get(0));
    	System.out.println("Êä³ö2£º¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª"+list.get(1));
        	String hql="from Banches";
    		Query query=sessionFactory.getCurrentSession().createQuery(hql);
    		List<Banches> list1=query.list();
    		for(int i=0;i<list1.size();i++){
    			System.out.println("Êä³öËùÓÐÍøµã"+list1.get(i).getBid());
    		for(int j=0;j<list.size();j++){
    			int a=Integer.parseInt(list.get(j).toString()); 
    			System.out.println("hehehheheheh"+a);
    			if(list1.get(i).getBid()==a){
    				list1.remove(i);  
    			  if(i>0){
    				i--; 
    			  }
    			}
    			}
    		}
    		return  list1;   	
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<Banches> getBanchesByPidCid(int pid, int cid) {
		String hql="from Banches where pid=? and cid=?";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, pid);
		query.setInteger(1, cid);
		return query.list();
	}
}
