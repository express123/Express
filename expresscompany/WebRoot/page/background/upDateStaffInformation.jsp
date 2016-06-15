<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/expresscompany/js/identity.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>个人信息修改界面</title>
 <link href="/expresscompany/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<br>
    <center><font size="7">欢迎来到个人信息修改界面</font></center> <br>
	 <hr size="6"  color="#ff0000"><br><br>
	<s:form action="upDateImformationSuccessStaff.action?websitemanage11.spd=%{websitemanage11.spd}" namespace="/staffmanage" method="post">
		 <center> 职工编号：<s:textfield name="websitemanage11.sid" size="35"  readonly="true"/><br/><br/>
		 <center> 个人姓名：<s:textfield name="websitemanage11.sname" size="35" /><br/><br/>
		 <center> 个人住址：<s:textfield name="websitemanage11.saddress" size="35" /><br/><br/>
		 <center> 个人电话：<s:textfield name="websitemanage11.sphone" size="35" maxlength="11"/><br/><br/> 
		 <center> 所属网点：<s:textfield name = "websitemanage11.bname" size="35" readonly="true"/><br/><br/>          
		 <center> 员工类型：<s:textfield name="websitemanage11.stname" size="35" readonly="true"/><br/><br/>
		 <center> <s:submit value="保存"/>&nbsp;&nbsp;<s:reset value="重置" />
	</s:form>
</body>
<script>
$(function(){
	var id1="#upDateImformationSuccessStaff_websitemanage11_sid";
	var id2="#upDateImformationSuccessStaff_websitemanage11_sname";
	var id4="#upDateImformationSuccessStaff_websitemanage11_saddress";
	var id3="#upDateImformationSuccessStaff_websitemanage11_sphone";
	var id5="#upDateImformationSuccessStaff_websitemanage11_bname";
	var id6="#upDateImformationSuccessStaff_websitemanage11_stname";
	$(id1).blur(function(){
		var name1=$(id1).val().trim();
		bname(name1,id1,"职工编号不能为空");
	});
	$(id2).blur(function(){
		var name2=$(id2).val().trim();
		bname(name2,id2,"姓名不能为空");
	});
	$(id3).blur(function(){
		var mobile=$(id3).val().trim();
		bphone(mobile,id3);
	});
	$(id4).blur(function(){
		var name3=$(id4).val().trim();
		bname(name3,id4,"住址不能为空");
	});
	$(id5).blur(function(){
		var name4=$(id5).val().trim();
		bname(name4,id5,"网点不能为空");
	});
	$(id6).blur(function(){
		var name5=$(id6).val().trim();
		bname(name5,id6,"员工类型不能为空");
	});
	$("input:reset").bind("click",function(){
		$(id1).next("span").remove();
		$(id2).next("span").remove();
		$(id3).next("span").remove();
		$(id4).next("span").remove();
		$(id5).next("span").remove();
		$(id6).next("span").remove();
	});
});
</script>
</html>
