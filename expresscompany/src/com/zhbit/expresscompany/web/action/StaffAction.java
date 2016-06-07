package com.zhbit.expresscompany.web.action;
import java.util.ArrayList;
import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.expresscompany.domain.Banches;
import com.zhbit.expresscompany.domain.SType;
import com.zhbit.expresscompany.domain.Staff;
import com.zhbit.expresscompany.domain.Website;
import com.zhbit.expresscompany.domain.websitemanage;
import com.zhbit.expresscompany.service.BanchesSerive;
import com.zhbit.expresscompany.service.STypeSerive;
import com.zhbit.expresscompany.service.StaffSerive;

public class StaffAction extends ActionSupport {
	private StaffSerive serive;
	private Staff staff;
	private List<Staff> allStaffBid;
    private int sid;
        private SType sType;
        private STypeSerive serive1;
        private List<SType> allStype;
	  
    private Banches banches;
	private BanchesSerive serive2;
	private List<Banches> allbanches;

	private List<websitemanage> webSitemanage= new ArrayList<websitemanage>();
	public String get(){
		Staff rightstaff;
		rightstaff=serive.getStaff(staff.getSid());
		if(rightstaff.getSpd().equals(staff.getSpd())){
			return "LoginStaff";
		}else{
			return SUCCESS;
		}
		
	}
	 
     public String addWebSiteManager(){
    	//��ȡ����ֵԱ������ID 
       staff.setStid(serive1.getTheSTypeBySTypeName().getStid());
       System.out.println("hehehehehehhe");
       System.out.println("hehehehehehhe"+staff.getSid());
       serive.add(staff);  
       return "addWebSiteStaffsuccess";
	}
	
	public String enterWebsite(){
		System.out.println("nihaonihasjsadhfodshffadssafddsafdsaf");
		//��ȡ���㾭��ID��ͨ�����㾭��ID����ְ���������������㾭��
		allStaffBid=serive.getTheStaffByStid(serive1.getTheSTypeBySTypeName().getStid());
		System.out.println("CHENG"+serive1.getTheSTypeBySTypeName().getStid());
		//��ȡְ�������������Ѿ��������㾭�������ID
		 List list=new ArrayList();
		for(int i=0;i<allStaffBid.size();i++){
			list.add(allStaffBid.get(i).getBid());
			System.out.println("chulaile "+allStaffBid.get(i).getSname());
		}
		System.out.println("ooooooooooooooooooooo"+list.get(0));
		System.out.println("ooooooooooooooooooooo"+list.get(1));
		//���ҳ����л�û�������㾭�������
		allbanches=serive2.allNotUseBanches(list);
		for(int i=0;i<allbanches.size();i++){
		System.out.println("��������"+allbanches.get(i).getBid());
		}
		
		
		//���㾭��ID:serive1.getTheSTypeBySTypeName().getStid();
		//ͨ�����㾭��ID�����������㾭��
		allStaffBid=serive.getTheStaffByStid(serive1.getTheSTypeBySTypeName().getStid());
		
		 for(int i=0;i<allStaffBid.size();i++){
			 System.out.println("WANGDIANJINGLI:"+allStaffBid.get(i).getSid());
			 websitemanage websitemanage1=new websitemanage();
			 websitemanage1.setSid(allStaffBid.get(i).getSid());
			 websitemanage1.setSname(allStaffBid.get(i).getSname());
			 websitemanage1.setBname(serive2.getBanches(allStaffBid.get(i).getBid()).getBname());
			 websitemanage1.setStname(serive1.getSType(allStaffBid.get(i).getStid()).getStname());
			 websitemanage1.setSaddress(allStaffBid.get(i).getSaddress());
			 websitemanage1.setSphone(allStaffBid.get(i).getSphone());
			 websitemanage1.setSpd(allStaffBid.get(i).getSpd()); 
			 webSitemanage.add(websitemanage1);
		   }  
		
		return "enterWebsiteManager";
	}

	public String goToUpdateWebsitemanager(){
		//��ȡ���㾭��ID��ͨ�����㾭��ID����ְ���������������㾭��
		allStaffBid=serive.getTheStaffByStid(serive1.getTheSTypeBySTypeName().getStid());
		System.out.println("CHENG"+serive1.getTheSTypeBySTypeName().getStid());
		//��ȡְ�������������Ѿ��������㾭�������ID
		List list=new ArrayList();
		for(int i=0;i<allStaffBid.size();i++){
		list.add(allStaffBid.get(i).getBid());
		System.out.println("chulaile "+allStaffBid.get(i).getSname());
		}
		System.out.println("ooooooooooooooooooooo"+list.get(0));
		System.out.println("ooooooooooooooooooooo"+list.get(1));
		//���ҳ����л�û�������㾭�������
		allbanches=serive2.allNotUseBanches(list);
		for(int i=0;i<allbanches.size();i++){
		System.out.println("��������"+allbanches.get(i).getBid());
		}
		//ͨ��Ա��ID��ȡԱ����Ϣ
		staff = serive.getStaff(sid);
		//�������㾭����������ID��������ӽ�allbanches
		allbanches.add(serive2.getBanches(staff.getBid()));
		return "goToUpdateWebsitemanager";
	}
	public String updateWebsitemanager(){	 
		staff.setStid(serive1.getTheSTypeBySTypeName().getStid());
		serive.upDate(staff);
		return "updateWebsitemanager";
	}
	
	public String delectWebsitemanager(){
		System.out.println("heeeeeeeeeeeeeeeeeeeeeeeeeee");
		System.out.println("heeeeeeeeeeeeeeeeee"+sid+"hhhhhhhhhhhhh");
		serive.removeStaff(sid);
		return "delectWebsitemanager";
	}
	public StaffSerive getSerive() {
		return serive;
	}
	public void setSerive(StaffSerive serive) {
		this.serive = serive;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	public List<Staff> getAllStaffBid() {
		return allStaffBid;
	}

	public void setAllStaffBid(List<Staff> allStaffBid) {
		this.allStaffBid = allStaffBid;
	}

	public SType getsType() {
		return sType;
	}

	public void setsType(SType sType) {
		this.sType = sType;
	}

        public STypeSerive getSerive1() {
		return serive1;
	}

	public void setSerive1(STypeSerive serive1) {
		this.serive1 = serive1;
	}

	public List<SType> getAllStype() {
		return allStype;
	}

	public void setAllStype(List<SType> allStype) {
		this.allStype = allStype;
	}

	public Banches getBanches() {
		return banches;
	}

	public void setBanches(Banches banches) {
		this.banches = banches;
	}

	public BanchesSerive getSerive2() {
		return serive2;
	}

	public void setSerive2(BanchesSerive serive2) {
		this.serive2 = serive2;
	}

	public List<Banches> getAllbanches() {
		return allbanches;
	}

	public void setAllbanches(List<Banches> allbanches) {
		this.allbanches = allbanches;
	}

	public List<websitemanage> getWebSitemanage() {
		return webSitemanage;
	}

	public void setWebSitemanage(List<websitemanage> webSitemanage) {
		this.webSitemanage = webSitemanage;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

}
