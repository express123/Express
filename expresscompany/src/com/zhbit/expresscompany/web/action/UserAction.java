package com.zhbit.expresscompany.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.expresscompany.domain.Orders;
import com.zhbit.expresscompany.domain.User;
import com.zhbit.expresscompany.service.OrdersSerive;
import com.zhbit.expresscompany.service.UserSerive;

public class UserAction extends ActionSupport {
	private User user;
	private UserSerive serive;
	private List<User> allUser;
	private String uiid;
	private String uid;
	
	private OrdersSerive serive1;
	private int ratio;//个人信息完整度
	private List<Orders> orderslist;
	private String YPD;
	private String NewPD;
	private String NewYesPD;
	
	public String register(){	
		serive.add(user);
		return SUCCESS;
	}

	
	public String get(){
		User rightuser;
		rightuser=serive.getUser(user.getUid());
		if(rightuser.getUpd().equals(user.getUpd())){
			ActionContext actionContext = ActionContext.getContext();
			Map session = actionContext.getSession();
			session.put("user",rightuser);
			return "LoginUser";
		}else{
			return SUCCESS;
		}
		
	}
    
	public String goToPage(){ 
		allUser=serive.getAllUser();
		return "goToUserPage";
	}
	public String search(){
		
		allUser=serive.getAllUser();	
		try{
		user=serive.getUser(uiid);
		user.getUpd().equals("");
		}catch(Exception e){
			System.out.println("+++++++++++==========shibai");
			return "goToUserPage";
		}
		System.out.println("+++++++++++"+user.getUid());
	return "goToUpdateUser";
		
	}
	
	public String goToUpdate(){
		user=serive.getUser(uid);
		return "goToUpdateUser";
	} 
	
	public String goTodelect(){
		serive.removeUser(uid);
		allUser=serive.getAllUser();
		return "goToUserPage";
	} 
	
	public String saveInformation(){
		serive.UpDate(user);
		allUser=serive.getAllUser();
		return "goToUserPage";
	}
	public UserSerive getSerive() {
		return serive;
	}

	public String showIndex(){//跳向首页的方法
		Map	 session =ActionContext.getContext().getSession();
		user=(User)session.get("user");
		ratio=25;
		if(user.getUname()!=null){//个人完整度的增加
			if(!user.getUname().equals(""))
			{	
				ratio=ratio+25;
			}
		}
		if(user.getUphone()!=null){
			if(!user.getUphone().equals(""))
			{	
				ratio=ratio+25;
			}
		}
		if(user.getUaddress()!=null){
			if(!user.getUaddress().equals(""))
			{	
				ratio=ratio+25;
			}
		}
		orderslist=serive1.getNotCompletedOrders(user.getUid());
		
		return SUCCESS;
	}
	
	public String updateUserPD(){//修改用户密码
		Map	 session =ActionContext.getContext().getSession();
		user=(User)session.get("user");
		if(YPD.equals(user.getUpd())){
			if(NewPD.equals(NewYesPD)){
				user.setUpd(NewPD);
				user=serive.UpDate(user);
				session.put("user",user);
				
			}
		}else{
			
		}
		return SUCCESS;
	}
	
	public String updateUserData(){//修改用户资料
		Map	 session =ActionContext.getContext().getSession();
		User user1=(User)session.get("user");
		user.setUid(user1.getUid());
		user.setUpd(user1.getUpd());
		user=serive.UpDate(user);
		session.put("user",user);
		return SUCCESS;
	}
	
	public String clearSession(){//用户退出系统
		ActionContext.getContext().getSession().clear();
		 //使HttpSession失效
		 ServletActionContext.getRequest().getSession().invalidate();
		 return SUCCESS;
	}
	
	
	
	
	public void setSerive(UserSerive serive) {
		this.serive = serive;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}


	public List<User> getAllUser() {
		return allUser;
	}


	public void setAllUser(List<User> allUser) {
		this.allUser = allUser;
	}


	public String getUiid() {
		return uiid;
	}


	public void setUiid(String uiid) {
		this.uiid = uiid;
	}


	public String getUid() {
		return uid;
	}


	public void setUid(String uid) {
		this.uid = uid;
	}


	public OrdersSerive getSerive1() {
		return serive1;
	}


	public void setSerive1(OrdersSerive serive1) {
		this.serive1 = serive1;
	}


	public int getRatio() {
		return ratio;
	}


	public void setRatio(int ratio) {
		this.ratio = ratio;
	}


	public List<Orders> getOrderslist() {
		return orderslist;
	}


	public void setOrderslist(List<Orders> orderslist) {
		this.orderslist = orderslist;
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

    
	
	
	
	
	
}
