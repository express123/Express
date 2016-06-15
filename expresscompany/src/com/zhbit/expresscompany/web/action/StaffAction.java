package com.zhbit.expresscompany.web.action;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.expresscompany.domain.Banches;
import com.zhbit.expresscompany.domain.City;
import com.zhbit.expresscompany.domain.Logisitcs;
import com.zhbit.expresscompany.domain.Orders;
import com.zhbit.expresscompany.domain.Province;
import com.zhbit.expresscompany.domain.SType;
import com.zhbit.expresscompany.domain.Staff;
import com.zhbit.expresscompany.domain.websitemanage;
import com.zhbit.expresscompany.service.BanchesSerive;
import com.zhbit.expresscompany.service.CitySerive;
import com.zhbit.expresscompany.service.LogisitcsSerive;
import com.zhbit.expresscompany.service.OrdersSerive;
import com.zhbit.expresscompany.service.ProvinceSerive;
import com.zhbit.expresscompany.service.STypeSerive;
import com.zhbit.expresscompany.service.StaffSerive;

public class StaffAction extends ActionSupport {
	private StaffSerive serive;
	private Staff staff;
	private List<Staff> allStaffBid;
	private int sid;
    private SType sType;
    private STypeSerive serive1;
    private List<SType> allStype=new ArrayList<SType>();
	  
    private Banches banches;
	private BanchesSerive serive2;
	private List<Banches> allbanches;
	private List<websitemanage> webSitemanage= new ArrayList<websitemanage>();
	
	private String YPD;//ԭ����
	private String NewPD;//�µ�����
	private String NewYesPD;//ȷ������
	private int ratio;//�û�������
	private OrdersSerive serive3;
	private List<Orders> orderslist = new ArrayList<Orders>();
	private List<Orders> orderslistYes = new ArrayList<Orders>();//�ѽӵ�����
	private ProvinceSerive serive4;
	private CitySerive serive5;
	private Orders orders;
	private int oid1;
	private LogisitcsSerive serive6;
	private List<Logisitcs> Logisitcslist = new ArrayList<Logisitcs>();
	private Logisitcs logisitcs=new Logisitcs();
	private int LogisitcsState;
	
public String get(){

		if("null".equals(String.valueOf(staff.getSid())) || "0".equals(String.valueOf(staff.getSid())) || "null".equals(String.valueOf(staff.getSpd())) || "0".equals(String.valueOf(staff.getSpd()))){  
        
			return "fail";
			
		}
		
		Staff rightstaff;
		rightstaff=serive.getStaff(staff.getSid());
		if("null".equals(String.valueOf(rightstaff.getSid())) || "0".equals(String.valueOf(rightstaff.getSid()))){  
	      
				return "fail";
				
			}
		
		if(rightstaff.getSpd().equals(staff.getSpd())){
		
			//ActionContext.getContext().getSession().put("rightstaff", rightstaff);
			ActionContext actionContext = ActionContext.getContext();
			Map session = actionContext.getSession();
			session.put("staff",rightstaff); 
			
			System.out.println("�����¼�����ƣ�"+rightstaff.getSname());
			
			if(serive1.getSType(rightstaff.getStid()).getStname().equals("�ܾ���")){
			  return "LoginStaff";
			}
			if(serive1.getSType(rightstaff.getStid()).getStname().equals("���㾭��")){
				return "websitemanageEnter";
			}
			if(serive1.getSType(rightstaff.getStid()).getStname().equals("ҵ��Ա")){
				return "clerkEnter";
			}
		}else{
			return "fail";
		}
		    return "fail";
		}

public String exit(){
		 
	 //���session
	 ActionContext.getContext().getSession().clear();
	 //ʹHttpSessionʧЧ
	 ServletActionContext.getRequest().getSession().invalidate();
	   
	 return "exit";
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
	//���ҳ����л�û�������㾭�������
	allbanches=serive2.allNotUseBanches(list);
	for(int i=0;i<allbanches.size();i++){
	System.out.println("��������"+allbanches.get(i).getBid());
	}
	
	
	//���㾭��ID:serive1.getTheSTypeBySTypeName().getStid();
	//ͨ�����㾭��ID�����������㾭��
	allStaffBid=serive.getTheStaffByStid(serive1.getTheSTypeBySTypeName().getStid());
	
	 for(int i=0;i<allStaffBid.size();i++){
		 System.out.println("hehehehheh000000000:"+allStaffBid.get(i).getSid());
		 websitemanage websitemanage1=new websitemanage();
		 websitemanage1.setSid(allStaffBid.get(i).getSid());
		 System.out.println("WANGDIANJINGLI:"+websitemanage1.getSid());
		 websitemanage1.setSname(allStaffBid.get(i).getSname());
		 System.out.println("WANGDIANJINGLI:"+websitemanage1.getSname());
		 websitemanage1.setBname(serive2.getBanches(allStaffBid.get(i).getBid()).getBname());
		 System.out.println("WANGDIANJINGLI:"+websitemanage1.getBname());
		 websitemanage1.setStname(serive1.getSType(allStaffBid.get(i).getStid()).getStname());
		 System.out.println("WANGDIANJINGLI:"+websitemanage1.getStname());
		 websitemanage1.setSaddress(allStaffBid.get(i).getSaddress());
		 System.out.println("WANGDIANJINGLI:"+websitemanage1.getSaddress());
		 websitemanage1.setSphone(allStaffBid.get(i).getSphone());
		 System.out.println("WANGDIANJINGLI:"+websitemanage1.getSphone());
		 websitemanage1.setSpd(allStaffBid.get(i).getSpd()); 
		 System.out.println("WANGDIANJINGLI:"+websitemanage1.getSpd());
		 webSitemanage.add(websitemanage1);
	   }  
	
	return "enterWebsiteManager";
}

public String goToUpdateWebsitemanager(){
		//��ȡ���㾭��ID��ͨ�����㾭��ID����ְ���������������㾭��
		allStaffBid=serive.getTheStaffByStid(serive1.getTheSTypeBySTypeName().getStid());
		for(int i=0;i<allStaffBid.size();i++){
			System.out.println("CHENG"+allStaffBid.get(i).getBid());
		}
		//��ȡְ�������������Ѿ��������㾭�������ID
		List list=new ArrayList();
		for(int i=0;i<allStaffBid.size();i++){
		list.add(allStaffBid.get(i).getBid());
		System.out.println("chulaile "+allStaffBid.get(i).getSname());
		}
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
	
public String enter(){
	    //�ҳ�������Ա������
		allStype=serive1.getALlSType();
		for(int i=0;i<allStype.size();i++){
    		System.out.println("�������Ա������:::::::::::::::"+allStype.get(i).getStname());
    		if(allStype.get(i).getStname().equals("�ܾ���")){
    			allStype.remove(i);  
    			 if(i>0)
     				i--; 
    		}
    		if(allStype.get(i).getStname().equals("���㾭��")){
    			allStype.remove(i);  
    			 if(i>0)
     				i--; 
    		}
    		}
		
		Map	 session =ActionContext.getContext().getSession();
		Staff staff1=(Staff)session.get("staff");
		System.out.println("���session��������ݣ�"+staff1.getSname());
		allStaffBid=serive.getALLStaff(staff1.getBid());
		//���ҳ�������Ա��
		for(int i=0;i<allStaffBid.size();i++){
			if(allStaffBid.get(i).getStid()==3 || allStaffBid.get(i).getStid()==4){
				allStaffBid.remove(i);
				 if(i>0)
	     		 i--; 
			}
		}
		//�������
		 for(int i=0;i<allStaffBid.size();i++){
			 websitemanage websitemanage1=new websitemanage();
			 websitemanage1.setSid(allStaffBid.get(i).getSid());
			 System.out.println("WANGDIANJINGLI:"+websitemanage1.getSid());
			 websitemanage1.setSname(allStaffBid.get(i).getSname());
			 System.out.println("WANGDIANJINGLI:"+websitemanage1.getSname());
			 websitemanage1.setBname(serive2.getBanches(allStaffBid.get(i).getBid()).getBname());
			 System.out.println("WANGDIANJINGLI:"+websitemanage1.getBname());
			 websitemanage1.setStname(serive1.getSType(allStaffBid.get(i).getStid()).getStname());
			 System.out.println("WANGDIANJINGLI:"+websitemanage1.getStname());
			 websitemanage1.setSaddress(allStaffBid.get(i).getSaddress());
			 System.out.println("WANGDIANJINGLI:"+websitemanage1.getSaddress());
			 websitemanage1.setSphone(allStaffBid.get(i).getSphone());
			 System.out.println("WANGDIANJINGLI:"+websitemanage1.getSphone());
			 websitemanage1.setSpd(allStaffBid.get(i).getSpd()); 
			 System.out.println("WANGDIANJINGLI:"+websitemanage1.getSpd());
			 webSitemanage.add(websitemanage1);
		   }  
		return "enterstaff";
	}
	
public String addBelong(){
		Map	 session =ActionContext.getContext().getSession();
		Staff staff1=(Staff)session.get("staff");
		System.out.println("���session��������ݣ�"+staff1.getSname());
		staff.setBid(staff1.getBid());
		serive.add(staff);
		return "addBelongSuccess";
	}

public String goToUpdateBelong(){
	  //�ҳ�������Ա������
			allStype=serive1.getALlSType();
			for(int i=0;i<allStype.size();i++){
	    		System.out.println("�������Ա������:::::::::::::::"+allStype.get(i).getStname());
	    		if(allStype.get(i).getStname().equals("�ܾ���")){
	    			allStype.remove(i);  
	    			 if(i>0)
	     				i--; 
	    		}
	    		if(allStype.get(i).getStname().equals("���㾭��")){
	    			allStype.remove(i);  
	    			 if(i>0)
	     				i--; 
	    		}
	    		}
			//ͨ��Ա��ID��ȡԱ����Ϣ
			staff = serive.getStaff(sid);
			
			return "updateBelongStaff";
			
}

public String update(){//�޸�Ա����Ϣ
	Map	 session =ActionContext.getContext().getSession();
	Staff staff1=(Staff)session.get("staff");
	staff.setBid(staff1.getBid());
	System.out.println("�޸ĵ�Ա������ID:"+staff1.getBid());
	serive.upDate(staff);
	return "updatesuccess";
}

	public String updateClerkPD(){//�޸�ҵ��Ա����
		Map	 session =ActionContext.getContext().getSession();
		staff=(Staff)session.get("staff");
		if(YPD.equals(staff.getSpd())){
			if(NewPD.equals(NewYesPD)){
				staff.setSpd(NewPD);
				staff=serive.upDate(staff);
				session.put("staff",staff);
			}
		}else{
			
		}
		return SUCCESS;
	}
	
	public String updateClerkData(){//�޸�ҵ��Ա����
		Map	 session =ActionContext.getContext().getSession();
		Staff staff1=(Staff)session.get("staff");
		staff.setSid(staff1.getSid());
		staff.setSpd(staff1.getSpd());
		staff.setBid(staff1.getBid());
		staff.setStid(staff1.getStid());
		staff=serive.upDate(staff);
		session.put("staff",staff);
		return SUCCESS;
	}
	
	public String showClerkIndex(){//������ҳ�ķ���
		Map	 session =ActionContext.getContext().getSession();
		staff=(Staff)session.get("staff");
		ratio=25;
		if(staff.getSname()!=null){//���������ȵ�����
			if(!staff.getSname().equals(""))
			{	
				ratio=ratio+25;
			}
			
		}
		if(staff.getSphone()!=null){
			if(!staff.getSphone().equals(""))
			{	
				ratio=ratio+25;
			}
		}
		if(staff.getSaddress()!=null){
			if(!staff.getSaddress().equals(""))
			{	
				ratio=ratio+25;
			}
		}
		banches=serive2.getBanches(staff.getBid());//�ҳ���ҵ��Ա����������
		int osid=1;
		List<Orders> orderslist1=serive3.getNotOrders(osid);//�ҳ�����δ�ӵ��Ķ���
		String pname=null;//�����мļ���ַ��ʡ��
		String cname=null;//�����мļ���ַ�ĳ���
		int pid=0;
		int cid=0;
		Province province=new Province();
		City city=new City();
		String Addrress=null;//��Ŷ����еļļ���ַ
		for(int i=0;i<orderslist1.size();i++){
			Addrress=orderslist1.get(i).getUsaddress();
			String[] address = Addrress.split("-");
			pname=address[0];
			cname=address[1];
			province=serive4.getProvinceByname(pname);
			pid=province.getPid();
			city=serive5.getCityByname(cname);
			cid=city.getCid();
			if(pid==banches.getPid()){
				if(cid==banches.getCid()){
					orderslist.add(orderslist1.get(i));//��ʡ�ݳ���һ�µ�ʱ��ͷŽ�ȥ
				}
			}
		}
		
		return SUCCESS;
	}
	
	public String clerkShowOrders(){//���붩������
		Map	 session =ActionContext.getContext().getSession();
		staff=(Staff)session.get("staff");
		banches=serive2.getBanches(staff.getBid());//�ҳ���ҵ��Ա����������
		List<Orders> orderslist1=serive3.getNotOrders(1);//�ҳ�����δ�ӵ��Ķ���
		List<Orders> orderslist2=serive3.getNotOrders(2);//�ҳ������ѽӵ��Ķ���
		String pname=null;//�����мļ���ַ��ʡ��
		String cname=null;//�����мļ���ַ�ĳ���
		int pid=0;
		int cid=0;
		Province province=new Province();
		City city=new City();
		String Addrress=null;//��Ŷ����еļļ���ַ
		for(int i=0;i<orderslist1.size();i++){//δ�ӵ�
			Addrress=orderslist1.get(i).getUsaddress();
			String[] address = Addrress.split("-");
			pname=address[0];
			cname=address[1];
			province=serive4.getProvinceByname(pname);
			pid=province.getPid();
			city=serive5.getCityByname(cname);
			cid=city.getCid();
			if(pid==banches.getPid()){
				if(cid==banches.getCid()){
					orderslist.add(orderslist1.get(i));//��ʡ�ݳ���һ�µ�ʱ��ͷŽ�ȥ
				}
			}
		}
		
		for(int i=0;i<orderslist2.size();i++){//�ѽӵ�
			Addrress=orderslist2.get(i).getUsaddress();
			String[] address = Addrress.split("-");
			pname=address[0];
			cname=address[1];
			province=serive4.getProvinceByname(pname);
			pid=province.getPid();
			city=serive5.getCityByname(cname);
			cid=city.getCid();
			if(pid==banches.getPid()){
				if(cid==banches.getCid()){
					orderslistYes.add(orderslist2.get(i));//��ʡ�ݳ���һ�µ�ʱ��ͷŽ�ȥ
				}
			}
		}
		return SUCCESS;
	}
	
	public String clerkSelectNoOrdres(){//�鿴δ�ӵ��ľ��嶩������
		orders=serive3.getOrdersById(oid1);
		return SUCCESS;
	}
	
	public String clerkShowSuccessOrders(){//ȷ�Ͻӵ�
		Map	 session =ActionContext.getContext().getSession();
		staff=(Staff)session.get("staff");
		banches=serive2.getBanches(staff.getBid());//�ҳ���ҵ��Ա����������
		
		String cityname=null;
		String pname=null;
		City city111=new City();
		city111=serive5.getCityByCId(banches.getCid());
		cityname=city111.getCname();
		Province province111=new Province();
		province111=serive4.getProvinceById(banches.getPid());
		pname=province111.getPname();
		
		orders=serive3.getOrdersById(oid1);
		orders.setOsid(2);//�޸Ķ���״̬Ϊ�ѽӵ�
		orders=serive3.update(orders);
		String context="��"+pname+"-"+cityname+"�����㣺"+banches.getBname()+"--�ѽӵ�";//������Ϣ
		Date date1=new Date();
		logisitcs.setLtime(date1);
		logisitcs.setOid(oid1);
		logisitcs.setLcontext(context);
		logisitcs=serive6.add(logisitcs);
		clerkShowOrders();//��ȥ��������
		return SUCCESS;
	}
	
	public String clerkShowFailOrders(){//ȡ������
		orders=serive3.getOrdersById(oid1);
		orders.setOsid(5);//�޸Ķ���״̬Ϊ�쳣��
		orders=serive3.update(orders);
		return SUCCESS;
	}
	
	public String selectOrdersLogisitcs(){//��ѯ������������Ϣ
		orders=serive3.getOrdersById(oid1);
		Logisitcslist=serive6.getLogisitcs(orders.getOid());
		SType LogisitcsType1=new SType();//��ʱ��Ա���������������������ͣ�����
		SType LogisitcsType2=new SType();//��ʱ��Ա���������������������ͣ�����
		SType LogisitcsType3=new SType();//��ʱ��Ա���������������������ͣ�����
		SType LogisitcsType4=new SType();//��ʱ��Ա���������������������ͣ�����
		SType LogisitcsType5=new SType();//��ʱ��Ա���������������������ͣ�����
		LogisitcsType1.setStid(1);
		LogisitcsType1.setStname("������");
		allStype.add(LogisitcsType1);
		LogisitcsType2.setStid(2);
		LogisitcsType2.setStname("�ѵ���");
		allStype.add(LogisitcsType2);
		LogisitcsType3.setStid(3);
		LogisitcsType3.setStname("�ѷ���");
		allStype.add(LogisitcsType3);
		LogisitcsType4.setStid(4);
		LogisitcsType4.setStname("�����ɼ���");
		allStype.add(LogisitcsType4);
		LogisitcsType5.setStid(5);
		LogisitcsType5.setStname("��ǩ��");
		allStype.add(LogisitcsType5);
		//��Ҫд���鲻�������ķ���
		return SUCCESS;
	}
	
	public String updateLogisitcs(){
		Map	 session =ActionContext.getContext().getSession();
		staff=(Staff)session.get("staff");
		banches=serive2.getBanches(staff.getBid());//�ҳ���ҵ��Ա����������
		String cityname=null;
		String pname=null;
		City city11=new City();
		city11=serive5.getCityByCId(banches.getCid());
		cityname=city11.getCname();
		Province province11=new Province();
		province11=serive4.getProvinceById(banches.getPid());
		pname=province11.getPname();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		Date date1=new Date();
		orders=serive3.getOrdersById(orders.getOid());
		oid1=orders.getOid();
		String context=null;
		if(LogisitcsState==1){//������
			orders.setOsid(3);//�޸Ķ���״̬Ϊ��;��
			orders=serive3.update(orders);
			context="��"+pname+"-"+cityname+"�����㣺"+banches.getBname()+"�Ŀ��Ա������";//������Ϣ
		}
		if(LogisitcsState==2){//�ѵ���
			context="��"+pname+"-"+cityname+"������ѵ������㣺"+banches.getBname();//������Ϣ
		}
		if(LogisitcsState==3){//�ѷ���
			context="��"+pname+"-"+cityname+"����������㣺"+banches.getBname()+"�ѷ���";//������Ϣ
		}
		if(LogisitcsState==4){//�ɼ���
			context="��"+pname+"-"+cityname+"������������㣺"+banches.getBname()+"�ɼ��У���ע������绰";//������Ϣ
		}
		if(LogisitcsState==5){//��ǩ��
			orders.setOsid(3);//�޸Ķ���״̬Ϊ��;��
			Date date2=new Date();
			orders.setOendtime(date2);//���Ӷ�������ʱ��
			orders=serive3.update(orders);
			context="�����ǩ��,��лʹ�ñ������ˣ��ڴ��ٴ�Ϊ������";//������Ϣ
		}
		logisitcs.setLtime(date1);
		logisitcs.setOid(oid1);
		logisitcs.setLcontext(context);
		logisitcs=serive6.add(logisitcs);
		selectOrdersLogisitcs();
		return SUCCESS;
	}
	
	
	public String exitClerk(){//ҵ��Ա�˳�ϵͳ
		//���session
		 ActionContext.getContext().getSession().clear();
		 //ʹHttpSessionʧЧ
		 ServletActionContext.getRequest().getSession().invalidate();
		return SUCCESS;
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

	public String getYPD() {
		return YPD;
	}

	public void setYPD(String yPD) {
		YPD = yPD;
	}

	public String getNewPD() {
		return NewPD;
	}

	public void setNewPD(String newPD) {
		NewPD = newPD;
	}

	public String getNewYesPD() {
		return NewYesPD;
	}

	public void setNewYesPD(String newYesPD) {
		NewYesPD = newYesPD;
	}

	public int getRatio() {
		return ratio;
	}

	public void setRatio(int ratio) {
		this.ratio = ratio;
	}

	public OrdersSerive getSerive3() {
		return serive3;
	}

	public void setSerive3(OrdersSerive serive3) {
		this.serive3 = serive3;
	}

	public List<Orders> getOrderslist() {
		return orderslist;
	}

	public void setOrderslist(List<Orders> orderslist) {
		this.orderslist = orderslist;
	}

	public List<Orders> getOrderslistYes() {
		return orderslistYes;
	}

	public void setOrderslistYes(List<Orders> orderslistYes) {
		this.orderslistYes = orderslistYes;
	}

	public ProvinceSerive getSerive4() {
		return serive4;
	}

	public void setSerive4(ProvinceSerive serive4) {
		this.serive4 = serive4;
	}

	public CitySerive getSerive5() {
		return serive5;
	}

	public void setSerive5(CitySerive serive5) {
		this.serive5 = serive5;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public int getOid1() {
		return oid1;
	}

	public void setOid1(int oid1) {
		this.oid1 = oid1;
	}

	public LogisitcsSerive getSerive6() {
		return serive6;
	}

	public void setSerive6(LogisitcsSerive serive6) {
		this.serive6 = serive6;
	}

	public List<Logisitcs> getLogisitcslist() {
		return Logisitcslist;
	}

	public void setLogisitcslist(List<Logisitcs> logisitcslist) {
		Logisitcslist = logisitcslist;
	}

	public Logisitcs getLogisitcs() {
		return logisitcs;
	}

	public void setLogisitcs(Logisitcs logisitcs) {
		this.logisitcs = logisitcs;
	}

	public int getLogisitcsState() {
		return LogisitcsState;
	}

	public void setLogisitcsState(int logisitcsState) {
		LogisitcsState = logisitcsState;
	}
	
	
	
	
	
}

