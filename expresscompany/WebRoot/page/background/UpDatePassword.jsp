<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/expresscompany/js/identity.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>密码修改界面</title>
 <link href="/expresscompany/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<br>
    <center><font size="7">欢迎来到密码修改界面</font></center> <br>
	 <hr size="6"  color="#ff0000"><br><br><br>
   <s:form id="formPw" action="upDatePasswordSuccessStaff" namespace="/staffmanage" method="post">
		 <center> 职工编号：<s:textfield value="%{#session.staff.sid}" size="35"  readonly="true"/><br/><br/>
         <center> 原    密码：<s:password  id="apassword" size="35" maxlength="16"/><br/><br/>
         <center> 新    密码：<s:password  id="userPw1" size="35" maxlength="16"/><br/><br/>
         <center> 确认密码：<s:password  id="userPw11" name="userPw2" size="35" maxlength="16"/><br/><br/>
         <center> <input type="button" id="change" value="修改" />&nbsp;&nbsp;<s:reset value="重置" />
   </s:form>  
</body>
<script language="javascript">
     $(function(){
     	$("#change").bind("click",function(){
     		var userPwReal="${session.staff.spd}";
     		var userReal=$("#apassword").val().trim();
     		var userPw1=$("#userPw1").val().trim();
     		var userPw2=$("#userPw11").val().trim();
     		var flag=1;
     		
     		if(userReal!=userPwReal){
     			alert("原密码不正确");
     			flag=0;
     		}
     		if(userPw1==""){
     			alert("新密码不能空");
     			flag=0;
     		}
     		if(userPw2!=userPw1){
     			alert("两次输入的密码不一致");
     			flag=0;
     		}
     		if(flag==1){
     		 	this.form.submit();
     		}
     	});
     });
</script>
</html>
