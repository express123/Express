package com.zhbit.expresscompany.service;

import java.util.List;

import com.zhbit.expresscompany.domain.Staff;


public interface StaffSerive {
		
Staff add(Staff staff);
		
Staff getStaff(int sid);
		
void removeStaff(int sid);
   
List<Staff> getTheStaffByStid(int stid);
  
Staff upDate(Staff staff);   

Staff getBranchManager(int bid);

List<Staff> getALLStaff(int bid);

}
