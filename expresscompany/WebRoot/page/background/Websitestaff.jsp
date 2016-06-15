<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/expresscompany/js/identity.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>网点经理管理界面</title>
<link href="/expresscompany/css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
  .ta td{
  word-break: keep-all;
  white-space:nowrap;
  text-align:center;
  padding:10px;
  }
</style>
</head>
  <body>
  <br>
    <center><font size="7">欢迎来到网点经理管理界面</font></center><br>
     <hr size="6"  color="#ff0000"><br><br>
     <center><font size="6">添加网点经理</font></center> <br>
    <s:form action="addWebSiteManagerStaff" namespace="/staffmanage" method="post">
		 <center> 网点经理名称：<s:textfield name="staff.sname" size="35"/><br/><br/>
		 <center> 网点经理住址：<s:textfield  name="staff.saddress" size="35"/><br/><br/>
		 <center> 网点经理电话：<s:textfield name="staff.sphone" size="35"/><br/><br/>
		 <center> 登录        密码：<s:textfield name="staff.spd" size="35"/><br/><br/>
		 <center> 分配所属网点：<s:select  name = "staff.bid" list="allbanches"  listKey="bid" listValue="bname" /><br/><br/>          
		 <center> <s:submit value="保存"/>&nbsp;&nbsp;<s:reset value="重置" />
	</s:form>
      <br/>  <br/> <br/>
     <hr size="3"  color="#ff0000"><br><br>
     <center><font size="7">全部网点经理信息</font></center> <br>
      <table width="600" border="3" >
     <tr class="ta">
     <td >网点经理名称</td>
     <td >职工工号</td>
     <td >手机号码</td>
     <td >详细地址</td>
     <td >所属网点</td>
     <td >职工类型</td>
     <td >登录密码</td>
     <td >修         改</td>
     <td >删         除</td>
     </tr>
     <s:iterator value="webSitemanage">
  <tr class="ta">
    <td>
	<s:property value="sname" />
    </td>
    <td>
	<s:property value="sid" />
    </td>
     <td>
	<s:property value="sphone" />
    </td>
    <td>
	<s:property value="saddress" />
    </td>
    <td>
	<s:property value="bname" />
    </td>
    <td>
	<s:property value="stname" />
    </td>
    <td>
	<s:property value="spd" />
    </td>
    
    <td>
    <s:a action = "goToUpdateWebsitemanagerStaff" namespace = "/staffmanage" target="showNotice">
    <s:param name = "sid"><s:property value = "sid" /></s:param>
            修改
    </s:a>
    </td>
 
    <td>
    <s:a action = "delectWebsitemanagerStaff" namespace = "/staffmanage" target="showNotice">
    <s:param name = "sid"><s:property value = "sid" /></s:param>      
            删除  
    </s:a>  
    </td>
   
  </tr>
  </s:iterator>
  </table>   
     <br/><br/><br/>
     
  </body>
  <script>
$(function(){
	var id1="#addWebSiteManagerStaff_staff_sname";
	var id2="#addWebSiteManagerStaff_staff_saddress";
	var id3="#addWebSiteManagerStaff_staff_sphone";
	var id4="#addWebSiteManagerStaff_staff_spd";
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
