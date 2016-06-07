package com.zhbit.expresscompany.service.impl;
import java.util.List;
import com.zhbit.expresscompany.dao.StaffDao;
import com.zhbit.expresscompany.domain.Staff;
import com.zhbit.expresscompany.service.StaffSerive;

public class StaffSeriveBean implements StaffSerive {
	private StaffDao staffDao;
	public Staff add(Staff staff) {
		// TODO Auto-generated method stub
		
		return staffDao.save(staff);
	}

	public Staff getStaff(int sid) {
		// TODO Auto-generated method stub
		return staffDao.getStaffBySid(sid);
	}

	public void removeStaff(int sid) {
		// TODO Auto-generated method stub
		System.out.println("删除员工第一步");
		Staff staff=staffDao.getStaffBySid(sid);
		
		staffDao.delect(staff);
	}

        public List<Staff> getTheStaffByStid(int stid){
		return staffDao.getStaffByStid(stid);
	}

    public  void upDate(Staff staff){
    	staffDao.update(staff);
    }
    
	public StaffDao getStaffDao() {
		return staffDao;
	}

	public void setStaffDao(StaffDao staffDao) {
		this.staffDao = staffDao;
	}

}
