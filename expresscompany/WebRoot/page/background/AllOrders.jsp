<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/expresscompany/js/identity.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>员工管理界面</title>
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
    <center><font size="7">欢迎来到查看订单界面</font></center><br>
     <hr size="6"  color="#ff0000"><br><br>
     <center><font size="7">全部订单信息</font></center> <br><br>
      <center> <table width="98%" border="3" style="table-layout:fixed;">
     <tr class="ta">
     <td width="70px">订单号</td>
     <td width="80px">用户号</td>
     <td>寄件人姓名</td>
     <td width="100px">寄件人电话</td>
     <td>寄件人地址</td>
     <td>收件人姓名</td>
     <td width="100px">收件人电话</td>
     <td>收件人地址</td>
     <td>备注</td>
     <td>物品名称</td>
     <td width="40px">物品重量</td>
     <td>开始时间</td>
     <td>结束时间</td> 
     <td width="40px">运费</td> 
     <td>订单状态</td>
     </tr>
    <s:iterator value="allOrderss">
     <tr class="ta">
    <td>
	<s:property value="oid" />
    </td>
    <td>
	<s:property value="uid" />
    </td>
     <td>
	<s:property value="usname" />
    </td>
    <td>
	<s:property value="usphone" />
    </td>
    <td>
	<s:property value="usaddress" />
    </td>
    <td>
	<s:property value="urname" />
    </td>
    <td>
	<s:property value="urphone" />
    </td>
     <td>
	<s:property value="uraddress" />
    </td>
    <td>
	<s:property value="oremark" />
    </td>
    <td>
	<s:property value="owname" />
    </td>
    <td>
	<s:property value="oweight" />
    </td>
    <td>
	<s:property value="obegintime" />
    </td>
    <td>
	<s:property value="oendtime" />
    </td>
     <td>
	<s:property value="omoney" />
    </td>
    <td>
	<s:property value="osname" />
    </td>
  </tr>
  </s:iterator>
  </table>  
   </center> 
     <br/><br/><br/>
     
  </body>
 
</html>
