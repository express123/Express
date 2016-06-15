<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/expresscompany/js/identity.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>用户管理界面</title>
<link href="/expresscompany/css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css"> 
  .ta td{
  text-align:center;
  padding:1px;
  }
 </style>
</head>
  <body>
  <br>
    <center><font size="7">欢迎来到用户管理界面</font></center><br>
     <hr size="6"  color="#ff0000"><br><br>
      <center><font size="6">查询用户</font></center> <br>
    
    <s:form action="searchUser" namespace="/usermanage" method="post">
		 <center> 用户名：<s:textfield name="uiid" size="35"/><br/><br/>
		 <center> <s:submit value="查询"/>&nbsp;&nbsp;<s:reset value="重置" />
	</s:form>
    
      <br/>  <br/> <br/>
     <hr size="3"  color="#ff0000"><br><br>
     <center><font size="7">全部用户信息</font></center> <br><br>
      <center> <table width="98%" border="3" style="table-layout:fixed;">
     <tr class="ta">
     <td width="100px">用户名</td>
     <td width="100px">姓名</td>
     <td width="120px">电话</td>
     <td width="200px">地址</td>
     <td width="120px">密码</td>
     <td width="80px">修改</td>
     <td width="80px">删除</td>
     </tr>
    <s:iterator value="allUser">
     <tr class="ta">
    <td>
	<s:property value="uid" />
    </td>
    <td>
	<s:property value="uname" />
    </td>
    <td>
	<s:property value="uphone" />
    </td>
     <td>
	<s:property value="uaddress" />
    </td>
    <td>
	<s:property value="upd" />
    </td>
    <td>
    <s:a action = "goToUpdateUser" namespace = "/usermanage" target="showNotice">
    <s:param name = "uid"><s:property value = "uid" /></s:param>
            修改
    </s:a>
    </td>
 
    <td>
    <s:a action = "goTodelectUser" namespace = "/usermanage" target="showNotice">
    <s:param name = "uid"><s:property value = "uid" /></s:param>      
            删除  
    </s:a>  
    </td>
  </tr>
  </s:iterator>
  </table>  
   </center> 
     <br/><br/><br/>
     
  </body>
 
</html>
