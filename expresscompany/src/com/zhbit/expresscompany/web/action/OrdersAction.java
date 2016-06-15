package com.zhbit.expresscompany.web.action;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.expresscompany.domain.*;
import com.zhbit.expresscompany.service.*;

public class OrdersAction extends ActionSupport {
	private Orders orders;
	private OrdersSerive serive;
	private HttpServletResponse response;
    private HttpServletRequest request;
	private int spid;//寄件省份ID
	private int scid;//寄件城市ID
	private int rpid;//收件省份ID
	private int rcid;//收件城市ID
	private ProvinceSerive pserive;
	private CitySerive cserive;
	private List<Orders> allOrders;
	private List<AllOrders> allOrderss=new ArrayList<AllOrders>();
	private OState oState;
	private OStateSerive serive2;
	public String addOrders(){
		Province sprovince=new Province();
		City scity=new City();
		System.out.println(spid);
		System.out.println(scid);
		System.out.println(rpid);
		System.out.println(rcid);
		sprovince=pserive.getProvinceById(spid);//求寄件详细地址
		scity=cserive.getCityByCId(scid);
		String usaddress=sprovince.getPname()+"-"+scity.getCname()+"-"+orders.getUsaddress();
		orders.setUsaddress(usaddress);
		
		Province rprovince=new Province();
		City rcity=new City();
		rprovince=pserive.getProvinceById(rpid);//求收件详细地址
		rcity=cserive.getCityByCId(rcid);
		String uraddress=rprovince.getPname()+"-"+rcity.getCname()+"-"+orders.getUraddress();
		orders.setUraddress(uraddress);		
		return SUCCESS;
	}
	
	public String ADDOrders(){
		Date date=new Date();
		orders.setObegintime(date);
		orders.setOsid(1);//订单状态
		orders.setUid(null);//游客下单
		orders=serive.addOrders(orders);
		return SUCCESS;
	}
    
	public String GetAllOrders(){
		allOrders=serive.getAllOrders();
		for(int i=0;i<allOrders.size();i++){
		AllOrders allOrders1=new AllOrders();
		allOrders1.setOid(allOrders.get(i).getOid());
		allOrders1.setUid(allOrders.get(i).getUid());
		allOrders1.setUsname(allOrders.get(i).getUsname());
		allOrders1.setUsphone(allOrders.get(i).getUsphone());
		allOrders1.setUsaddress(allOrders.get(i).getUsaddress());
		allOrders1.setUrname(allOrders.get(i).getUrname());
		allOrders1.setUrphone(allOrders.get(i).getUrphone());
		allOrders1.setUraddress(allOrders.get(i).getUraddress());
		allOrders1.setOremark(allOrders.get(i).getOremark());
		allOrders1.setOwname(allOrders.get(i).getOwname());
		allOrders1.setOweight(allOrders.get(i).getOweight());
		allOrders1.setObegintime(allOrders.get(i).getObegintime());
		allOrders1.setOendtime(allOrders.get(i).getOendtime());
		allOrders1.setOmoney(allOrders.get(i).getOmoney());
		allOrders1.setOsname(serive2.getOStateById(allOrders.get(i).getOsid()).getOsname());
		allOrderss.add(allOrders1);
		}
		return SUCCESS;
	}

	public Orders getOrders() {
		return orders;
	}


	public void setOrders(Orders orders) {
		this.orders = orders;
	}


	public OrdersSerive getSerive() {
		return serive;
	}


	public void setSerive(OrdersSerive serive) {
		this.serive = serive;
	}


	public HttpServletResponse getResponse() {
		return response;
	}


	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}


	public HttpServletRequest getRequest() {
		return request;
	}


	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}


	public int getSpid() {
		return spid;
	}


	public void setSpid(int spid) {
		this.spid = spid;
	}


	public int getScid() {
		return scid;
	}


	public void setScid(int scid) {
		this.scid = scid;
	}


	public int getRpid() {
		return rpid;
	}


	public void setRpid(int rpid) {
		this.rpid = rpid;
	}


	public int getRcid() {
		return rcid;
	}


	public void setRcid(int rcid) {
		this.rcid = rcid;
	}


	public ProvinceSerive getPserive() {
		return pserive;
	}


	public void setPserive(ProvinceSerive pserive) {
		this.pserive = pserive;
	}


	public CitySerive getCserive() {
		return cserive;
	}


	public void setCserive(CitySerive cserive) {
		this.cserive = cserive;
	}

	public List<Orders> getAllOrders() {
		return allOrders;
	}

	public void setAllOrders(List<Orders> allOrders) {
		this.allOrders = allOrders;
	}

	public List<AllOrders> getAllOrderss() {
		return allOrderss;
	}

	public void setAllOrderss(List<AllOrders> allOrderss) {
		this.allOrderss = allOrderss;
	}

	public OState getoState() {
		return oState;
	}

	public void setoState(OState oState) {
		this.oState = oState;
	}

	public OStateSerive getSerive2() {
		return serive2;
	}

	public void setSerive2(OStateSerive serive2) {
		this.serive2 = serive2;
	}

	

	
}
