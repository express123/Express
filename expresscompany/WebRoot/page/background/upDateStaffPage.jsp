<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/expresscompany/js/identity.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>网点员工界面</title>
 <link href="/expresscompany/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<br>
    <center><font size="7">欢迎来到网点员工修改界面</font></center> <br>
	 <hr size="6"  color="#ff0000"><br><br>
	  <center><font size="6">修改网点员工</font></center> <br>
	<s:form action="updateStaff.action?staff.sid=%{staff.sid}" namespace="/staffmanage" method="post">
		 <center> 员工名称：<s:textfield name="staff.sname" size="35"/><br/><br/>
		 <center> 员工类型：<s:select  name = "staff.stid" list="allStype"  listKey="stid" listValue="stname" /><br/><br/>
		 <center> 员工住址：<s:textfield  name="staff.saddress" size="35"/><br/><br/>
		 <center> 员工电话：<s:textfield name="staff.sphone" size="35"/><br/><br/>
		 <center> 登录密码：<s:textfield name="staff.spd" size="35"/><br/><br/>
		 <center> <s:submit value="保存"/>&nbsp;&nbsp;<s:reset value="重置" />
	</s:form>
</body>
<script>
$(function(){
	var id1="#updateStaff_staff_sname";
	var id2="#updateStaff_staff_saddress";
	var id3="#updateStaff_staff_sphone";
	var id4="#updateStaff_staff_spd";
	$(id1).blur(function(){
		var name1=$(id1).val().trim();
		bname(name1,id1,"姓名不能为空");
	});
	$(id2).blur(function(){
		var name2=$(id2).val().trim();
		bname(name2,id2,"地址不能为空");
	});
	$(id3).blur(function(){
		var mobile=$(id3).val().trim();
		bphone(mobile,id3);
	});
	$(id4).blur(function(){
		var name3=$(id4).val().trim();
		bname(name3,id4,"密码不能为空");
	});
	$("input:reset").bind("click",function(){
		$(id1).next("span").remove();
		$(id2).next("span").remove();
		$(id3).next("span").remove();
		$(id4).next("span").remove();
	});
});
</script>
</html>
