package com.zhbit.expresscompany.web.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.expresscompany.domain.Banches;

import com.zhbit.expresscompany.domain.Staff;
import com.zhbit.expresscompany.service.BanchesSerive;
import com.zhbit.expresscompany.service.StaffSerive;


public class QueryBranchAction extends ActionSupport {
		private BanchesSerive serive;
		private int pid;
		private int cid;
		private List<Banches> bancheslist;

		private StaffSerive  staffSerive;
		private List<Staff> stafflist=new ArrayList<Staff>();

		public String getbanches(){
			
			bancheslist=serive.getBanchesByPidCid(pid, cid);
			return "banches";
		}
		
		public String getphones(){

			bancheslist=serive.getBanchesByPidCid(pid, cid);
			for(Banches banche:bancheslist){
				Staff staff=staffSerive.getBranchManager(banche.getBid());
				System.out.println("--------------------"+staff.getSname());
				stafflist.add(staff);
			}

			return "phones";
		}
		
		
		public BanchesSerive getSerive() {
			return serive;
		}
		public void setSerive(BanchesSerive serive) {
			this.serive = serive;
		}


		public List<Banches> getBancheslist() {
			return bancheslist;
		}

		public void setBancheslist(List<Banches> bancheslist) {
			this.bancheslist = bancheslist;
		}

		public int getPid() {
			return pid;
		}

		public void setPid(int pid) {
			this.pid = pid;
		}

		public int getCid() {
			return cid;
		}

		public void setCid(int cid) {
			this.cid = cid;
		}


		public StaffSerive getStaffSerive() {
			return staffSerive;
		}

		public void setStaffSerive(StaffSerive staffSerive) {
			this.staffSerive = staffSerive;
		}

		public List<Staff> getStafflist() {
			return stafflist;
		}

		public void setStafflist(List<Staff> stafflist) {
			this.stafflist = stafflist;
		}

		
		
		
		
		
}
