package com.zhbit.expresscompany.web.action;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.expresscompany.service.CitySerive;
import com.zhbit.expresscompany.service.MoneysSerive;
import com.zhbit.expresscompany.service.ProvinceSerive;

public class QueryFreightAction extends ActionSupport {
		private MoneysSerive moneysSerive;
		private CitySerive cityserive;
		private ProvinceSerive provinceserive;
		private int spid;
		private int rpid;
		private int scid;
		private int rcid;
		private String spname;
		private String rpname;
		private String scname;
		private String rcname;
		private String weight;
		private String money;
		
		public String getFreight(){
			spname=provinceserive.getProvinceById(spid).getPname();
			rpname=provinceserive.getProvinceById(rpid).getPname();
			scname=cityserive.getCityByCid(scid).getCname();
			rcname=cityserive.getCityByCid(rcid).getCname();
			int w;
			int freight = 0;
			w=Integer.parseInt(weight);
			if(w<10){
				if(spid==rpid){freight=moneysSerive.getMoneyByMid(1).getMmoney();}
			    else{freight=moneysSerive.getMoneyByMid(1).getMmoney()+10;}
			}else if(w<20){
				if(spid==rpid){freight=moneysSerive.getMoneyByMid(2).getMmoney();}
			    else{freight=moneysSerive.getMoneyByMid(2).getMmoney()+10;}				
			}else if(w<30){
				if(spid==rpid){freight=moneysSerive.getMoneyByMid(3).getMmoney();}
			    else{freight=moneysSerive.getMoneyByMid(3).getMmoney()+10;}	
			}else if(w<40){
				if(spid==rpid){freight=moneysSerive.getMoneyByMid(4).getMmoney();}
			    else{freight=moneysSerive.getMoneyByMid(4).getMmoney()+10;}	
			}else if(w<50){
				if(spid==rpid){freight=moneysSerive.getMoneyByMid(5).getMmoney();}
			    else{freight=moneysSerive.getMoneyByMid(5).getMmoney()+10;}	
			}
			money=Integer.toString(freight);
			System.out.println("-----------------"+money);
			return "freight";
		}
		
		public MoneysSerive getMoneysSerive() {
			return moneysSerive;
		}

		public void setMoneysSerive(MoneysSerive moneysSerive) {
			this.moneysSerive = moneysSerive;
		}

		public int getSpid() {
			return spid;
		}

		public void setSpid(int spid) {
			this.spid = spid;
		}

		public int getRpid() {
			return rpid;
		}

		public void setRpid(int rpid) {
			this.rpid = rpid;
		}

		public String getWeight() {
			return weight;
		}

		public void setWeight(String weight) {
			this.weight = weight;
		}

	

		public CitySerive getCityserive() {
			return cityserive;
		}

		public void setCityserive(CitySerive cityserive) {
			this.cityserive = cityserive;
		}

		public ProvinceSerive getProvinceserive() {
			return provinceserive;
		}

		public void setProvinceserive(ProvinceSerive provinceserive) {
			this.provinceserive = provinceserive;
		}

		public int getScid() {
			return scid;
		}

		public void setScid(int scid) {
			this.scid = scid;
		}

		public int getRcid() {
			return rcid;
		}

		public void setRcid(int rcid) {
			this.rcid = rcid;
		}

		public String getSpname() {
			return spname;
		}

		public void setSpname(String spname) {
			this.spname = spname;
		}

		public String getRpname() {
			return rpname;
		}

		public void setRpname(String rpname) {
			this.rpname = rpname;
		}

		public String getScname() {
			return scname;
		}

		public void setScname(String scname) {
			this.scname = scname;
		}

		public String getRcname() {
			return rcname;
		}

		public void setRcname(String rcname) {
			this.rcname = rcname;
		}

		public String getMoney() {
			return money;
		}

		public void setMoney(String money) {
			this.money = money;
		}

	
}
