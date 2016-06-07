<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>网点经理修改界面</title>
 <link href="../../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<br>
<br><br><br><br><br><br><br>
    <center><font size="7">欢迎来到网点经理修改界面</font></center> <br>
	 <hr size="6"  color="#ff0000"><br><br>
	  <center><font size="6">修改网点经理</font></center> <br>
	<s:form action="updateWebsitemanagerStaff.action?staff.sid=%{staff.sid}" namespace="/staffmanage" method="post">
		 <center> 网点经理名称：<s:textfield name="staff.sname" size="35"/><br/><br/>
		 <center> 网点经理住址：<s:textfield  name="staff.saddress" size="35"/><br/><br/>
		 <center> 网点经理电话：<s:textfield name="staff.sphone" size="35"/><br/><br/>
		 <center> 登录          密码：<s:textfield name="staff.spd" size="35"/><br/><br/>
		 <center> 分配所属网点：<s:select  name = "staff.bid" list="allbanches"  listKey="bid" listValue="bname" /><br/><br/>          
		 <center> <s:submit value="保存"/>&nbsp;&nbsp;<s:reset value="重置" />
	</s:form>
</body>
<script>
function bname(name){
		if(name==""){
			$("#saveUpDateBanches_banches_bname").next("span").remove();
			$("#saveUpDateBanches_banches_bname").after("<span style='color:red;'>网点名称不能为空</span>")
		}
		else{
			$("#saveUpDateBanches_banches_bname").next("span").remove();
		}}
function baddress(name){
		if(name==""){
			$("#saveUpDateBanches_banches_baddress").next("span").remove();
			$("#saveUpDateBanches_banches_baddress").after("<span style='color:red;'>详细地址不能为空</span>")
		}
		else{
			$("#saveUpDateBanches_banches_baddress").next("span").remove();
		}
}
function bphone(mobile){
		if(!/^(13[0-9]|14[0-9]|15[0-9]|17[0-9]|18[0-9])\d{8}$/i.test(mobile)){
			$("#saveUpDateBanches_banches_bphone").next("span").remove();
			$("#saveUpDateBanches_banches_bphone").after("<span style='color:red;'>手机号无效</span>")
		}
		else{
			$("#saveUpDateBanches_banches_bphone").next("span").remove();
		}
}
$(function(){
	$("#saveUpDateBanches_banches_bname").blur(function(){
		var name1=$("#saveUpDateBanches_banches_bname").val().trim();
		bname(name1);
	});
	$("#saveUpDateBanches_banches_baddress").blur(function(){
		var name2=$("#saveUpDateBanches_banches_baddress").val().trim();
		baddress(name2);
	});

	$("#saveUpDateBanches_banches_bphone").blur(function(){
		var mobile=$("#saveUpDateBanches_banches_bphone").val().trim();
		bphone(mobile);
	});
	$("input:reset").bind("click",function(){
		$("#saveUpDateBanches_banches_bname").next("span").remove();
		$("#saveUpDateBanches_banches_baddress").next("span").remove();
		$("#saveUpDateBanches_banches_bphone").next("span").remove();
	});
})
</script>
</html>
