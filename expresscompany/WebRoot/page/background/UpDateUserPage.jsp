<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/expresscompany/js/identity.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>网点修改界面</title>
 <link href="/expresscompany/css/style.css" rel="stylesheet" type="text/css" />
 <style type="text/css"> 
 .doubles br{
			display: none;
			}
 
 </style>
</head>
<body>
<br>
    <center><font size="7">欢迎来到用户信息修改界面</font></center> <br>
	 <hr size="6"  color="#ff0000"><br><br>
	  <center><font size="6">修改用户信息</font></center> <br> <br> <br>
	<s:form action="saveInformationUser" namespace="/usermanage" method="post">
		 <center> 用户名：<s:textfield name="user.uid" size="35"  readonly="true"/><br/><br/>
		 <center> 姓名：<s:textfield name="user.uname" size="35" /><br/><br/>
		 <center> 电话：<s:textfield name="user.uphone" size="35" maxlength="11"/><br/><br/>
		 <center> 地址：<s:textfield name="user.uaddress" size="35" /><br/><br/> 
		 <center> 密码：<s:textfield name="user.upd" size="35" /><br/><br/>          
		 <center> <s:submit value="保存"/>&nbsp;&nbsp;<s:reset value="重置" />
	</s:form>
</body>
<script>
$(function(){
	var id1="#saveInformationUser_user_uid";
	var id2="#saveInformationUser_user_uname";
	var id3="#saveInformationUser_user_uphone";
	var id4="#saveInformationUser_user_uaddress";
	var id5="#saveInformationUser_user_upd";
	$(id1).blur(function(){
		var name1=$(id1).val().trim();
		bname(name1,id1,"用户名不能为空");
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
		bname(name3,id4,"地址不能为空");
	});
	$(id5).blur(function(){
		var name4=$(id5).val().trim();
		bname(name4,id5,"密码不能为空");
	});
	$("input:reset").bind("click",function(){
		$(id1).next("span").remove();
		$(id2).next("span").remove();
		$(id3).next("span").remove();
		$(id4).next("span").remove();
		$(id5).next("span").remove();
	});
});
</script>
</html>
